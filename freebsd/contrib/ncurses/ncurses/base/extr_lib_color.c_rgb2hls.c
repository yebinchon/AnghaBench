
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NCURSES_COLOR_T ;



__attribute__((used)) static void
rgb2hls(int r, int g, int b, NCURSES_COLOR_T *h, NCURSES_COLOR_T *l, NCURSES_COLOR_T *s)

{
    int min, max, t;

    if ((min = g < r ? g : r) > b)
 min = b;
    if ((max = g > r ? g : r) < b)
 max = b;


    *l = (NCURSES_COLOR_T) ((min + max) / 20);

    if (min == max) {
 *h = 0;
 *s = 0;
 return;
    }


    if (*l < 50)
 *s = (NCURSES_COLOR_T) (((max - min) * 100) / (max + min));
    else
 *s = (NCURSES_COLOR_T) (((max - min) * 100) / (2000 - max - min));


    if (r == max)
 t = (NCURSES_COLOR_T) (120 + ((g - b) * 60) / (max - min));
    else if (g == max)
 t = (NCURSES_COLOR_T) (240 + ((b - r) * 60) / (max - min));
    else
 t = (NCURSES_COLOR_T) (360 + ((r - g) * 60) / (max - min));

    *h = (NCURSES_COLOR_T) (t % 360);
}
