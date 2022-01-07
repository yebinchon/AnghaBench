
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_mourn_inferior () ;
 int pop_target () ;

__attribute__((used)) static void
vx_mourn_inferior (void)
{
  pop_target ();
  generic_mourn_inferior ();
}
