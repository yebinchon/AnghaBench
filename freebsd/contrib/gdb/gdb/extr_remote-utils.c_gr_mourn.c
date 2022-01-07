
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_mourn_inferior () ;
 int gr_clear_all_breakpoints () ;
 int gr_get_ops () ;
 int unpush_target (int ) ;

void
gr_mourn (void)
{
  gr_clear_all_breakpoints ();
  unpush_target (gr_get_ops ());
  generic_mourn_inferior ();
}
