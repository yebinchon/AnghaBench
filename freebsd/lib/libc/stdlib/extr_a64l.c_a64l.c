
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A0 ;
 int AA ;
 char const ASLASH ;
 char const Aa ;

long
a64l(const char *s)
{
 long shift;
 int digit, i, value;

 value = 0;
 shift = 0;
 for (i = 0; *s != '\0' && i < 6; i++, s++) {
  if (*s <= ASLASH)
   digit = *s - ASLASH + 1;
  else if (*s <= A0 + 9)
   digit = *s - A0 + 2;
  else if (*s <= AA + 25)
   digit = *s - AA + 12;
  else
   digit = *s - Aa + 38;

  value |= digit << shift;
  shift += 6;
 }
 return (value);
}
