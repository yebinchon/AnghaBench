
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_env {int * now; } ;
struct autr_ta {int last_change; } ;



__attribute__((used)) static void
reset_holddown(struct module_env* env, struct autr_ta* ta, int* changed)
{
 ta->last_change = *env->now;
 *changed = 1;
}
