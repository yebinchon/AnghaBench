
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct env_lst {int var; struct env_lst* next; } ;
struct TYPE_2__ {struct env_lst* next; } ;


 TYPE_1__ envlisthead ;
 scalar_t__ strcmp (int ,unsigned char const*) ;

__attribute__((used)) static struct env_lst *
env_find(const unsigned char *var)
{
 struct env_lst *ep;

 for (ep = envlisthead.next; ep; ep = ep->next) {
  if (strcmp(ep->var, var) == 0)
   return(ep);
 }
 return(((void*)0));
}
