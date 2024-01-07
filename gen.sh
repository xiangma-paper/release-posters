# 如何生成海报
convert -size 300x450 gradient:green-white \
    -font '/usr/share/fonts/opentype/noto/NotoSansCJK-Bold.ttc' \
    -pointsize 25 \
    -draw "fill white text 20,50 '响马读paper'" \
    -font '/usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc' \
    -pointsize 15 \
    -draw "fill white text 20,80 '版本0.1.5 (2024/1/7)'" \
    -draw "fill white text 20,120 '更新：'" \
    -draw "fill white text 20,150 '1. 文献页面支持滚动加载更多内容。'" \
    \( bg-2.png -resize 300x300 \
        \( -size 300x300 gradient:'rgba(0,0,0,0)'-'rgba(0,0,0,0.2)' \) \
        -alpha set -compose CopyOpacity -composite \) \
    -gravity south -compose Over -composite \
    \( qr.jpg -resize 120x120 -background none \) \
    -gravity southeast -geometry +10+10 -compose Over -composite \
    out-poster.jpg
