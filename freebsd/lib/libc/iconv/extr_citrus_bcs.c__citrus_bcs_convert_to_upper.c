
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char _bcs_toupper (char) ;

void
_citrus_bcs_convert_to_upper(char *s)
{

 while (*s) {
  *s = _bcs_toupper(*s);
  s++;
 }
}
