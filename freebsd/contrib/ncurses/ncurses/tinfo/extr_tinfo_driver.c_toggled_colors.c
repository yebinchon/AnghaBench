
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
toggled_colors(int c)
{
    if (c < 16) {
 static const int table[] =
 {0, 4, 2, 6, 1, 5, 3, 7,
  8, 12, 10, 14, 9, 13, 11, 15};
 c = table[c];
    }
    return c;
}
