
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* charmap ;

int
ascii_strncasecmp(const char *s1, const char *s2, register size_t n)
{
 register const unsigned char *cm = charmap,
   *us1 = (const unsigned char *)s1,
   *us2 = (const unsigned char *)s2;

 for (;;) {
  if (n == 0) {






   return(0);
  }
  if (cm[*us1] != cm[*us2++]) {



   break;
  }
  if (*us1++ == '\0') {





   return(0);
  }
  n--;
 }
 return(cm[*us1] - cm[*--us2]);
}
