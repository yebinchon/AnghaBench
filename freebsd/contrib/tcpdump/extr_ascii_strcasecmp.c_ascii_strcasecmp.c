
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* charmap ;

int
ascii_strcasecmp(const char *s1, const char *s2)
{
 register const unsigned char *cm = charmap,
   *us1 = (const unsigned char *)s1,
   *us2 = (const unsigned char *)s2;

 while (cm[*us1] == cm[*us2++])
  if (*us1++ == '\0')
   return(0);
 return(cm[*us1] - cm[*--us2]);
}
