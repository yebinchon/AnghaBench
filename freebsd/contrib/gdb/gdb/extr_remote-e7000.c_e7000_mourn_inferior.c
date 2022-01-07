
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int e7000_ops ;
 int generic_mourn_inferior () ;
 int remove_breakpoints () ;
 int unpush_target (int *) ;

__attribute__((used)) static void
e7000_mourn_inferior (void)
{
  remove_breakpoints ();
  unpush_target (&e7000_ops);
  generic_mourn_inferior ();
}
