
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _bcs_toupper (int ) ;

int
_citrus_bcs_strcasecmp(const char * __restrict str1,
    const char * __restrict str2)
{
 int c1, c2;

 c1 = c2 = 1;

 while (c1 && c2 && c1 == c2) {
  c1 = _bcs_toupper(*str1++);
  c2 = _bcs_toupper(*str2++);
 }

 return ((c1 == c2) ? 0 : ((c1 > c2) ? 1 : -1));
}
