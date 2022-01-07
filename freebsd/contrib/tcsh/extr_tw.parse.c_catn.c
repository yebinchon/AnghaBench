
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;



void
catn(Char *des, const Char *src, int count)
{
    while (*des && --count > 0)
 des++;
    while (--count > 0)
 if ((*des++ = *src++) == 0)
     return;
    *des = '\0';
}
