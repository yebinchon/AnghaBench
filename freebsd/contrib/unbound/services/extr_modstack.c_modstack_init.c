
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_stack {int * mod; scalar_t__ num; } ;



void
modstack_init(struct module_stack* stack)
{
 stack->num = 0;
 stack->mod = ((void*)0);
}
