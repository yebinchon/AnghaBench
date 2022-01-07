
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_core_fns (int *) ;
 int sun3_core_fns ;

void
_initialize_core_sun3 (void)
{
  add_core_fns (&sun3_core_fns);
}
