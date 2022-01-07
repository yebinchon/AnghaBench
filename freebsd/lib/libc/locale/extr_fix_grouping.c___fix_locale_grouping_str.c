
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHAR_MAX ;
 scalar_t__ isdigit (unsigned char) ;
 char const* nogrouping ;

const char *
__fix_locale_grouping_str(const char *str)
{
 char *src, *dst;
 char n;

 if (str == ((void*)0) || *str == '\0') {
  return nogrouping;
 }

 for (src = (char*)str, dst = (char*)str; *src != '\0'; src++) {


  if (*src == ';')
   continue;

  if (*src == '-' && *(src+1) == '1') {
   *dst++ = CHAR_MAX;
   src++;
   continue;
  }

  if (!isdigit((unsigned char)*src)) {

   return nogrouping;
  }


  n = *src - '0';
  if (isdigit((unsigned char)*(src+1))) {
   src++;
   n *= 10;
   n += *src - '0';
  }

  *dst = n;

  if (*dst == '\0')
   return (dst == (char*)str) ? nogrouping : str;
  dst++;
 }
 *dst = '\0';
 return str;
}
