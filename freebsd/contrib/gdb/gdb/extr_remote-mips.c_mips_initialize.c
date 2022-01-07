
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;


 int BREAK_UNUSED ;
 scalar_t__ MON_IDT ;
 scalar_t__ MON_LSI ;
 scalar_t__ clear_breakpoint (int,int ,int ) ;
 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup (int ,int *) ;
 int mips_desc ;
 int mips_enter_debug () ;
 int mips_error (char*) ;
 scalar_t__ mips_expect (int ) ;
 int mips_initialize_cleanups ;
 int mips_initializing ;
 int mips_make_srec (char*,char,int ,int *,int ) ;
 scalar_t__ mips_monitor ;
 int mips_monitor_prompt ;
 int mips_receive_wait ;
 int mips_request (char,int ,int ,int*,int ,int *) ;
 int mips_send_command (char*,int) ;
 scalar_t__ mips_wait_flag ;
 int monitor_supports_breakpoints ;
 int serial_flush_input (int ) ;
 int serial_flush_output (int ) ;
 int serial_readchar (int ,int ) ;
 int serial_send_break (int ) ;
 int serial_write (int ,char*,int) ;
 int sprintf (char*,char*) ;
 int warning (char*) ;

__attribute__((used)) static void
mips_initialize (void)
{
  int err;
  struct cleanup *old_cleanups = make_cleanup (mips_initialize_cleanups, ((void*)0));
  int j;





  if (mips_initializing)
    {
      warning ("internal error: mips_initialize called twice");
      return;
    }

  mips_wait_flag = 0;
  mips_initializing = 1;






  if (mips_monitor != MON_IDT)
    j = 0;
  else
    j = 1;
  for (; j <= 4; j++)
    {
      switch (j)
 {
 case 0:
   serial_flush_input (mips_desc);
   serial_write (mips_desc, "\r", 1);
   break;
 case 1:
   serial_send_break (mips_desc);
   break;
 case 2:
   serial_write (mips_desc, "\003", 1);
   break;
 case 3:
   {
     if (mips_monitor != MON_IDT)
       {
  char tbuff[7];







  serial_flush_output (mips_desc);
  sprintf (tbuff, "\r/E/E\r");
  serial_write (mips_desc, tbuff, 6);
       }
     else
       {
  char srec[10];
  int i;
  mips_make_srec (srec, '7', 0, ((void*)0), 0);

  for (i = 1; i <= 33; i++)
    {
      serial_write (mips_desc, srec, 8);

      if (serial_readchar (mips_desc, 0) >= 0)
        break;

    }
       }
   }
   break;
 case 4:
   mips_error ("Failed to initialize.");
 }

      if (mips_expect (mips_monitor_prompt))
 break;
    }

  if (mips_monitor != MON_IDT)
    {



      mips_send_command ("\r", -1);


      if (mips_monitor != MON_LSI)
 mips_send_command ("set regsize 64\r", -1);
      mips_send_command ("set hostport tty0\r", -1);
      mips_send_command ("set brkcmd \"\"\r", -1);

      mips_send_command ("db *\r", -1);


    }

  mips_enter_debug ();


  if ((mips_monitor == MON_IDT
       && clear_breakpoint (-1, 0, BREAK_UNUSED) == 0)
      || mips_monitor == MON_LSI)
    monitor_supports_breakpoints = 1;
  else
    monitor_supports_breakpoints = 0;

  do_cleanups (old_cleanups);




  mips_request ('r', 0, 0, &err, mips_receive_wait, ((void*)0));
}
