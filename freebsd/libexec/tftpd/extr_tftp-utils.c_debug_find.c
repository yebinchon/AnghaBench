
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int * name; } ;


 TYPE_1__* debugs ;
 scalar_t__ strcasecmp (int *,char*) ;

int
debug_find(char *s)
{
 int i = 0;

 while (debugs[i].name != ((void*)0)) {
  if (strcasecmp(debugs[i].name, s) == 0)
   break;
  i++;
 }
 return (debugs[i].value);
}
