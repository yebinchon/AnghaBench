
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gr_settings {TYPE_1__* ops; int * clear_all_breakpoints; } ;
struct TYPE_3__ {int to_shortname; } ;


 int baud_rate ;
 int gr_checkin () ;
 int gr_clear_all_breakpoints () ;
 int gr_close (int ) ;
 struct gr_settings* gr_settings ;
 int perror_with_name (char*) ;
 int printf_filtered (char*,...) ;
 int push_target (TYPE_1__*) ;
 int * remove_breakpoints ;
 int serial_close (int *) ;
 int serial_flush_input (int *) ;
 int serial_open (char*) ;
 int serial_raw (int *) ;
 scalar_t__ serial_setbaudrate (int *,int) ;
 int * sr_get_desc () ;
 char* sr_get_device () ;
 scalar_t__ sr_get_retries () ;
 int sr_scan_args (int ,char*) ;
 int sr_set_desc (int ) ;
 int sr_set_retries (int) ;
 int target_preopen (int) ;
 int unpush_target (TYPE_1__*) ;
 int usage (int ,int *) ;

void
gr_open (char *args, int from_tty, struct gr_settings *gr)
{
  target_preopen (from_tty);
  sr_scan_args (gr->ops->to_shortname, args);
  unpush_target (gr->ops);

  gr_settings = gr;

  if (sr_get_desc () != ((void*)0))
    gr_close (0);





  if (sr_get_device () == ((void*)0))
    usage (gr->ops->to_shortname, ((void*)0));

  sr_set_desc (serial_open (sr_get_device ()));
  if (!sr_get_desc ())
    perror_with_name ((char *) sr_get_device ());

  if (baud_rate != -1)
    {
      if (serial_setbaudrate (sr_get_desc (), baud_rate) != 0)
 {
   serial_close (sr_get_desc ());
   perror_with_name (sr_get_device ());
 }
    }

  serial_raw (sr_get_desc ());



  serial_flush_input (sr_get_desc ());


  if (sr_get_retries () == 0)
    sr_set_retries (1);


  if (gr_settings->clear_all_breakpoints == ((void*)0))
    gr_settings->clear_all_breakpoints = remove_breakpoints;

  if (from_tty)
    {
      printf_filtered ("Remote debugging using `%s'", sr_get_device ());
      if (baud_rate != -1)
 printf_filtered (" at baud rate of %d",
    baud_rate);
      printf_filtered ("\n");
    }

  push_target (gr->ops);
  gr_checkin ();
  gr_clear_all_breakpoints ();
  return;
}
