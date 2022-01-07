
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct env_lst {char* var; char* value; scalar_t__ export; struct env_lst* next; } ;
struct TYPE_2__ {struct env_lst* next; } ;


 TYPE_1__ envlisthead ;
 int printf (char*,char,char*,char*) ;

void
env_list(void)
{
 struct env_lst *ep;

 for (ep = envlisthead.next; ep; ep = ep->next) {
  printf("%c %-20s %s\n", ep->export ? '*' : ' ',
     ep->var, ep->value);
 }
}
