
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;



__attribute__((used)) static WORD
MapColor(bool fore, int color)
{
    static const int _cmap[] =
    {0, 4, 2, 6, 1, 5, 3, 7};
    int a;
    if (color < 0 || color > 7)
 a = fore ? 7 : 0;
    else
 a = _cmap[color];
    if (!fore)
 a = a << 4;
    return (WORD) a;
}
