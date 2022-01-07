
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gr_expect_prompt () ;
 int registers_changed () ;
 int sr_check_open () ;
 int sr_write (char*,int) ;
 int sr_write_cr (char*) ;

__attribute__((used)) static void
sr_com (char *args, int fromtty)
{
  sr_check_open ();

  if (!args)
    return;



  sr_write_cr (args);
  sr_write ("\030", 1);
  registers_changed ();
  gr_expect_prompt ();
}
