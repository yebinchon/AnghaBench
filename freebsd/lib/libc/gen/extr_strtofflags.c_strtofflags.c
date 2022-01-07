
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {int flag; scalar_t__ invert; scalar_t__ name; } ;


 TYPE_1__* mapping ;
 int nmappings ;
 scalar_t__ strcmp (char*,scalar_t__) ;
 char* strsep (char**,char*) ;

int
strtofflags(char **stringp, u_long *setp, u_long *clrp)
{
 char *string, *p;
 int i;

 if (setp)
  *setp = 0;
 if (clrp)
  *clrp = 0;
 string = *stringp;
 while ((p = strsep(&string, "\t ,")) != ((void*)0)) {
  *stringp = p;
  if (*p == '\0')
   continue;
  for (i = 0; i < nmappings; i++) {
   if (strcmp(p, mapping[i].name + 2) == 0) {
    if (mapping[i].invert) {
     if (clrp)
      *clrp |= mapping[i].flag;
    } else {
     if (setp)
      *setp |= mapping[i].flag;
    }
    break;
   } else if (strcmp(p, mapping[i].name) == 0) {
    if (mapping[i].invert) {
     if (setp)
      *setp |= mapping[i].flag;
    } else {
     if (clrp)
      *clrp |= mapping[i].flag;
    }
    break;
   }
  }
  if (i == nmappings)
   return 1;
 }
 return 0;
}
