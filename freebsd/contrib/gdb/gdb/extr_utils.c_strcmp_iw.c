
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;

int
strcmp_iw (const char *string1, const char *string2)
{
  while ((*string1 != '\0') && (*string2 != '\0'))
    {
      while (isspace (*string1))
 {
   string1++;
 }
      while (isspace (*string2))
 {
   string2++;
 }
      if (*string1 != *string2)
 {
   break;
 }
      if (*string1 != '\0')
 {
   string1++;
   string2++;
 }
    }
  return (*string1 != '\0' && *string1 != '(') || (*string2 != '\0');
}
