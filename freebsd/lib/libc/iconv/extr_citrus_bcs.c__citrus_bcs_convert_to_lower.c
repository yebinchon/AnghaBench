
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char _bcs_tolower (char) ;

void
_citrus_bcs_convert_to_lower(char *s)
{

 while (*s) {
  *s = _bcs_tolower(*s);
  s++;
 }
}
