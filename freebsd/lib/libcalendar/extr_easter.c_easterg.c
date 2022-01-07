
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int m; int d; int y; } ;
typedef TYPE_1__ date ;



date *
easterg(int y, date *dt)
{
 int c, i, j, k, l, n;

 n = y % 19;
 c = y / 100;
 k = (c - 17) / 25;
 i = (c - c/4 -(c-k)/3 + 19 * n + 15) % 30;
 i = i -(i/28) * (1 - (i/28) * (29/(i + 1)) * ((21 - n)/11));
 j = (y + y/4 + i + 2 - c + c/4) % 7;
 l = i - j;
 dt->m = 3 + (l + 40) / 44;
 dt->d = l + 28 - 31*(dt->m / 4);
 dt->y = y;
 return (dt);
}
