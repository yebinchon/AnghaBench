
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NAME_MASK ;
 int NAME_SYN ;

__attribute__((used)) static size_t
lstlen(const char *cp, size_t sep)
{
 size_t sz;

 for (sz = 0; *cp != '\0'; cp++) {


  if (*cp <= (char)(NAME_SYN & NAME_MASK)) {
   while (*cp != '\0')
    cp++;
   continue;
  }


  if (*cp < ' ')
   cp++;


  if (sz)
   sz += sep;


  while (*cp != '\0') {
   sz++;
   cp++;
  }
 }
 return sz;
}
