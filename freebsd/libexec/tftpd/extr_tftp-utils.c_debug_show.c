
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s ;
struct TYPE_2__ {char* name; int value; } ;


 TYPE_1__* debugs ;
 int strlcat (char*,char*,size_t) ;

const char *
debug_show(int d)
{
 static char s[100];
 size_t space = sizeof(s);
 int i = 0;

 s[0] = '\0';
 while (debugs[i].name != ((void*)0)) {
  if (d&debugs[i].value) {
   if (s[0] != '\0')
    strlcat(s, " ", space);
   strlcat(s, debugs[i].name, space);
  }
  i++;
 }
 if (s[0] != '\0')
  return (s);
 return ("none");
}
