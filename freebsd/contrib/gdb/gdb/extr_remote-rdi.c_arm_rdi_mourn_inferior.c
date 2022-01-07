
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arm_rdi_ops ;
 int generic_mourn_inferior () ;
 int remove_breakpoints () ;
 int unpush_target (int *) ;

__attribute__((used)) static void
arm_rdi_mourn_inferior (void)
{





  remove_breakpoints();
  unpush_target (&arm_rdi_ops);
  generic_mourn_inferior ();
}
