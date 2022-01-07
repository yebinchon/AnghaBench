
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_lst {int export; } ;


 struct env_lst* env_find (unsigned char*) ;

void
env_export(unsigned char *var)
{
 struct env_lst *ep;

 if ((ep = env_find(var)))
  ep->export = 1;
}
