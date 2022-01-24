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
 int MAX_TRIES ; 
 int /*<<< orphan*/  QUIT ; 
 int SERIAL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,long) ; 
 int FUNC6 (int) ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  remote_desc ; 
 int remote_timeout ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ watchdog ; 

__attribute__((used)) static int
FUNC10 (char *buf,
	long sizeof_buf,
	int forever)
{
  int c;
  int tries;
  int timeout;
  int val;

  FUNC8 (buf, "timeout");

  if (forever)
    {
      timeout = watchdog > 0 ? watchdog : -1;
    }

  else
    timeout = remote_timeout;

#define MAX_TRIES 3

  for (tries = 1; tries <= MAX_TRIES; tries++)
    {
      /* This can loop forever if the remote side sends us characters
         continuously, but if it pauses, we'll get a zero from readchar
         because of timeout.  Then we'll count that as a retry.  */

      /* Note that we will only wait forever prior to the start of a packet.
         After that, we expect characters to arrive at a brisk pace.  They
         should show up within remote_timeout intervals.  */

      do
	{
	  c = FUNC6 (timeout);

	  if (c == SERIAL_TIMEOUT)
	    {
	      if (forever)	/* Watchdog went off?  Kill the target. */
		{
		  QUIT;
		  FUNC9 ();
		  FUNC0 ("Watchdog has expired.  Target detached.\n");
		}
	      if (remote_debug)
		FUNC2 ("Timed out.\n", gdb_stdlog);
	      goto retry;
	    }
	}
      while (c != '$');

      /* We've found the start of a packet, now collect the data.  */

      val = FUNC5 (buf, sizeof_buf);

      if (val >= 0)
	{
	  if (remote_debug)
	    {
	      FUNC1 (gdb_stdlog, "Packet received: ");
	      FUNC3 (buf, 0, gdb_stdlog);
	      FUNC1 (gdb_stdlog, "\n");
	    }
	  FUNC7 (remote_desc, "+", 1);
	  return 0;
	}

      /* Try the whole thing again.  */
    retry:
      FUNC7 (remote_desc, "-", 1);
    }

  /* We have tried hard enough, and just can't receive the packet.  Give up. */

  FUNC4 ("Ignoring packet error, continuing...\n");
  FUNC7 (remote_desc, "+", 1);
  return 1;
}