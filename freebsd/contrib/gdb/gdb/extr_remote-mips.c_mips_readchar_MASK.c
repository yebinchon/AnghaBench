#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int SERIAL_EOF ; 
 int SERIAL_ERROR ; 
 int SERIAL_TIMEOUT ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  mips_desc ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  mips_exiting ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  mips_initializing ; 
 int* mips_monitor_prompt ; 
 scalar_t__ mips_need_reply ; 
 int remote_debug ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int watchdog ; 

__attribute__((used)) static int
FUNC8 (int timeout)
{
  int ch;
  static int state = 0;
  int mips_monitor_prompt_len = FUNC6 (mips_monitor_prompt);

  {
    int i;

    i = timeout;
    if (i == -1 && watchdog > 0)
      i = watchdog;
  }

  if (state == mips_monitor_prompt_len)
    timeout = 1;
  ch = FUNC5 (mips_desc, timeout);

  if (ch == SERIAL_TIMEOUT && timeout == -1)	/* Watchdog went off */
    {
      FUNC7 ();
      FUNC0 ("Watchdog has expired.  Target detached.\n");
    }

  if (ch == SERIAL_EOF)
    FUNC2 ("End of file from remote");
  if (ch == SERIAL_ERROR)
    FUNC2 ("Error reading from remote: %s", FUNC4 (errno));
  if (remote_debug > 1)
    {
      /* Don't use _filtered; we can't deal with a QUIT out of
         target_wait, and I think this might be called from there.  */
      if (ch != SERIAL_TIMEOUT)
	FUNC1 (gdb_stdlog, "Read '%c' %d 0x%x\n", ch, ch, ch);
      else
	FUNC1 (gdb_stdlog, "Timed out in read\n");
    }

  /* If we have seen mips_monitor_prompt and we either time out, or
     we see a @ (which was echoed from a packet we sent), reset the
     board as described above.  The first character in a packet after
     the SYN (which is not echoed) is always an @ unless the packet is
     more than 64 characters long, which ours never are.  */
  if ((ch == SERIAL_TIMEOUT || ch == '@')
      && state == mips_monitor_prompt_len
      && !mips_initializing
      && !mips_exiting)
    {
      if (remote_debug > 0)
	/* Don't use _filtered; we can't deal with a QUIT out of
	   target_wait, and I think this might be called from there.  */
	FUNC1 (gdb_stdlog, "Reinitializing MIPS debugging mode\n");

      mips_need_reply = 0;
      FUNC3 ();

      state = 0;

      /* At this point, about the only thing we can do is abort the command
         in progress and get back to command level as quickly as possible. */

      FUNC0 ("Remote board reset, debug protocol re-initialized.");
    }

  if (ch == mips_monitor_prompt[state])
    ++state;
  else
    state = 0;

  return ch;
}