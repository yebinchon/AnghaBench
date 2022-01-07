
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module_stack {int num; TYPE_1__** mod; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ strcmp (int ,char const*) ;

int
modstack_find(struct module_stack* stack, const char* name)
{
 int i;
 for(i=0; i<stack->num; i++) {
  if(strcmp(stack->mod[i]->name, name) == 0)
   return i;
 }
 return -1;
}
