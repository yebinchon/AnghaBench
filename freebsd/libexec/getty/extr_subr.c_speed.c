
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct speedtab {int speed; int uxname; } ;


 int B230400 ;
 int B300 ;
 struct speedtab* speedtab ;

int
speed(int val)
{
 struct speedtab *sp;

 if (val <= B230400)
  return (val);

 for (sp = speedtab; sp->speed; sp++)
  if (sp->speed == val)
   return (sp->uxname);

 return (B300);
}
