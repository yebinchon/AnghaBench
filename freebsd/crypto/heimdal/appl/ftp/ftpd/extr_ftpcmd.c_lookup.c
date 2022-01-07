
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tab {int * name; } ;


 scalar_t__ strcmp (char*,int *) ;

__attribute__((used)) static struct tab *
lookup(struct tab *p, char *cmd)
{

 for (; p->name != ((void*)0); p++)
  if (strcmp(cmd, p->name) == 0)
   return (p);
 return (0);
}
