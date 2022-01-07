
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gr_expect_prompt () ;
 int sr_write_cr (char*) ;

void
gr_generic_checkin (void)
{
  sr_write_cr ("");
  gr_expect_prompt ();
}
