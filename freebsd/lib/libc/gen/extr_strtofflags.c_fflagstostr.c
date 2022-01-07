
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int ;
struct TYPE_2__ {int flag; char* name; scalar_t__ invert; } ;


 int longestflaglen ;
 scalar_t__ malloc (int) ;
 TYPE_1__* mapping ;
 int nmappings ;

char *
fflagstostr(u_long flags)
{
 char *string;
 const char *sp;
 char *dp;
 u_long setflags;
 u_int i;

 if ((string = (char *)malloc(nmappings * (longestflaglen + 1))) == ((void*)0))
  return (((void*)0));

 setflags = flags;
 dp = string;
 for (i = 0; i < nmappings; i++) {
  if (setflags & mapping[i].flag) {
   if (dp > string)
    *dp++ = ',';
   for (sp = mapping[i].invert ? mapping[i].name :
       mapping[i].name + 2; *sp; *dp++ = *sp++) ;
   setflags &= ~mapping[i].flag;
  }
 }
 *dp = '\0';
 return (string);
}
