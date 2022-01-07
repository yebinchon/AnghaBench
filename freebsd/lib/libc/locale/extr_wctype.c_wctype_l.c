
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wctype_t ;
typedef int locale_t ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

wctype_t
wctype_l(const char *property, locale_t locale)
{
 const char *propnames =
  "alnum\0"
  "alpha\0"
  "blank\0"
  "cntrl\0"
  "digit\0"
  "graph\0"
  "lower\0"
  "print\0"
  "punct\0"
  "space\0"
  "upper\0"
  "xdigit\0"
  "ideogram\0"
  "special\0"
  "phonogram\0"
  "number\0"
  "rune\0";
 static const wctype_t propmasks[] = {
  142|135,
  142,
  141,
  140,
  139,
  138,
  136,
  132,
  134,
  131,
  129,
  128,
  137,
  130,
  133,
  135,
  0xFFFFFF00L
 };
 size_t len1, len2;
 const char *p;
 const wctype_t *q;

 len1 = strlen(property);
 q = propmasks;
 for (p = propnames; (len2 = strlen(p)) != 0; p += len2 + 1) {
  if (len1 == len2 && memcmp(property, p, len1) == 0)
   return (*q);
  q++;
 }

 return (0UL);
}
