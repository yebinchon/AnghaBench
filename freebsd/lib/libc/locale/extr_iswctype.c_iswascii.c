
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;



int
iswascii(wint_t wc)
{
 return ((wc & ~0x7F) == 0);
}
