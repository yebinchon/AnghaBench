
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RETURN_QUIT ;
 int close_ports () ;
 int interrupt_count ;
 int mips_desc ;
 scalar_t__ mips_is_open ;
 scalar_t__ mips_wait_flag ;
 int printf_unfiltered (char*) ;
 scalar_t__ query (char*) ;
 scalar_t__ remote_debug ;
 int serial_send_break (int ) ;
 int serial_write (int ,char*,int) ;
 int sleep (int) ;
 int target_mourn_inferior () ;
 int target_terminal_inferior () ;
 int target_terminal_ours () ;
 int throw_exception (int ) ;

__attribute__((used)) static void
mips_kill (void)
{
  if (!mips_wait_flag)
    return;

  interrupt_count++;

  if (interrupt_count >= 2)
    {
      interrupt_count = 0;

      target_terminal_ours ();

      if (query ("Interrupted while waiting for the program.\nGive up (and stop debugging it)? "))

 {



   mips_wait_flag = 0;
   close_ports ();

   printf_unfiltered ("Ending remote MIPS debugging.\n");
   target_mourn_inferior ();

   throw_exception (RETURN_QUIT);
 }

      target_terminal_inferior ();
    }

  if (remote_debug > 0)
    printf_unfiltered ("Sending break\n");

  serial_send_break (mips_desc);
}
