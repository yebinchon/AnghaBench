
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rl_command_func_t ;
struct TYPE_3__ {int * key; } ;
struct TYPE_4__ {TYPE_1__ el_map; } ;


 int ED_INSERT ;
 TYPE_2__* e ;
 int * h ;
 int rl_initialize () ;
 int * rl_insert ;

int
rl_bind_key(int c, rl_command_func_t *func)
{
 int retval = -1;

 if (h == ((void*)0) || e == ((void*)0))
  rl_initialize();

 if (func == rl_insert) {

  e->el_map.key[c] = ED_INSERT;
  retval = 0;
 }
 return retval;
}
