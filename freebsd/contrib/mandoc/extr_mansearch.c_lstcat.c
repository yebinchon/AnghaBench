
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NAME_MASK ;
 int NAME_SYN ;

__attribute__((used)) static void
lstcat(char *buf, size_t *i, const char *cp, const char *sep)
{
 const char *s;
 size_t i_start;

 for (i_start = *i; *cp != '\0'; cp++) {


  if (*cp <= (char)(NAME_SYN & NAME_MASK)) {
   while (*cp != '\0')
    cp++;
   continue;
  }


  if (*cp < ' ')
   cp++;


  if (*i > i_start) {
   s = sep;
   while (*s != '\0')
    buf[(*i)++] = *s++;
  }


  while (*cp != '\0')
   buf[(*i)++] = *cp++;
 }

}
