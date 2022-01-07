
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gr_clear_all_breakpoints () ;
 int serial_close (int ) ;
 int sr_get_desc () ;
 scalar_t__ sr_is_open () ;
 int sr_set_desc (int *) ;

void
gr_close (int quitting)
{
  gr_clear_all_breakpoints ();

  if (sr_is_open ())
    {
      serial_close (sr_get_desc ());
      sr_set_desc (((void*)0));
    }

  return;
}
