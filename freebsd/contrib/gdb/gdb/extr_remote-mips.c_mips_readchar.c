
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_EOF ;
 int SERIAL_ERROR ;
 int SERIAL_TIMEOUT ;
 int errno ;
 int error (char*) ;
 int fprintf_unfiltered (int ,char*,...) ;
 int gdb_stdlog ;
 int mips_desc ;
 int mips_error (char*,...) ;
 int mips_exiting ;
 int mips_initialize () ;
 int mips_initializing ;
 int* mips_monitor_prompt ;
 scalar_t__ mips_need_reply ;
 int remote_debug ;
 int safe_strerror (int ) ;
 int serial_readchar (int ,int) ;
 int strlen (int*) ;
 int target_mourn_inferior () ;
 int watchdog ;

__attribute__((used)) static int
mips_readchar (int timeout)
{
  int ch;
  static int state = 0;
  int mips_monitor_prompt_len = strlen (mips_monitor_prompt);

  {
    int i;

    i = timeout;
    if (i == -1 && watchdog > 0)
      i = watchdog;
  }

  if (state == mips_monitor_prompt_len)
    timeout = 1;
  ch = serial_readchar (mips_desc, timeout);

  if (ch == SERIAL_TIMEOUT && timeout == -1)
    {
      target_mourn_inferior ();
      error ("Watchdog has expired.  Target detached.\n");
    }

  if (ch == SERIAL_EOF)
    mips_error ("End of file from remote");
  if (ch == SERIAL_ERROR)
    mips_error ("Error reading from remote: %s", safe_strerror (errno));
  if (remote_debug > 1)
    {


      if (ch != SERIAL_TIMEOUT)
 fprintf_unfiltered (gdb_stdlog, "Read '%c' %d 0x%x\n", ch, ch, ch);
      else
 fprintf_unfiltered (gdb_stdlog, "Timed out in read\n");
    }






  if ((ch == SERIAL_TIMEOUT || ch == '@')
      && state == mips_monitor_prompt_len
      && !mips_initializing
      && !mips_exiting)
    {
      if (remote_debug > 0)


 fprintf_unfiltered (gdb_stdlog, "Reinitializing MIPS debugging mode\n");

      mips_need_reply = 0;
      mips_initialize ();

      state = 0;




      error ("Remote board reset, debug protocol re-initialized.");
    }

  if (ch == mips_monitor_prompt[state])
    ++state;
  else
    state = 0;

  return ch;
}
