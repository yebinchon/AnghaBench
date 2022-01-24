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
 int SERIAL_TIMEOUT ; 
 int FUNC0 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int message_pending ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (unsigned char*) ; 
 int FUNC7 (int) ; 
 scalar_t__ remote_debug ; 
 int sds_timeout ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,char*) ; 
 int FUNC9 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ watchdog ; 

__attribute__((used)) static int
FUNC11 (unsigned char *buf, int forever)
{
  int c, c2, c3;
  int tries;
  int timeout;
  int val, i, len, csum;
  unsigned char header[3];
  unsigned char inbuf[500];

  FUNC8 (buf, "timeout");

  if (forever)
    {
      timeout = watchdog > 0 ? watchdog : -1;
    }

  else
    timeout = sds_timeout;

#define MAX_TRIES 3

  for (tries = 1; tries <= MAX_TRIES; tries++)
    {
      /* This can loop forever if the remote side sends us characters
         continuously, but if it pauses, we'll get a zero from readchar
         because of timeout.  Then we'll count that as a retry.  */

      /* Note that we will only wait forever prior to the start of a packet.
         After that, we expect characters to arrive at a brisk pace.  They
         should show up within sds_timeout intervals.  */

      do
	{
	  c = FUNC7 (timeout);

	  if (c == SERIAL_TIMEOUT)
	    {
	      if (forever)	/* Watchdog went off.  Kill the target. */
		{
		  FUNC10 ();
		  FUNC1 ("Watchdog has expired.  Target detached.\n");
		}
	      if (remote_debug)
		FUNC3 ("Timed out.\n", gdb_stdlog);
	      goto retry;
	    }
	}
      while (c != '$' && c != '{');

      /* We might have seen a "trigraph", a sequence of three characters
         that indicate various sorts of communication state.  */

      if (c == '{')
	{
	  /* Read the other two chars of the trigraph. */
	  c2 = FUNC7 (timeout);
	  c3 = FUNC7 (timeout);
	  if (remote_debug)
	    FUNC2 (gdb_stdlog, "Trigraph %c%c%c received\n",
				c, c2, c3);
	  if (c3 == '+')
	    {
	      message_pending = 1;
	      return 0;		/*???? */
	    }
	  continue;
	}

      val = FUNC6 (inbuf);

      if (val == 1)
	{
	  FUNC4 (inbuf, header, 4);
	  /* (should check out other bits) */
	  FUNC4 (inbuf + 4, buf, FUNC9 (inbuf) - 4);

	  len = header[2];

	  csum = 0;
	  csum = FUNC0 (csum, buf, len);
	  csum = FUNC0 (csum, header + 1, 2);

	  if (csum != header[0])
	    FUNC2 (gdb_stderr,
			    "Checksum mismatch: computed %d, received %d\n",
				csum, header[0]);

	  if (header[2] == 0xff)
	    FUNC2 (gdb_stderr, "Requesting resend...\n");

	  if (remote_debug)
	    {
	      FUNC2 (gdb_stdlog,
				"... (Got checksum %d, id %d, length %d)\n",
				  header[0], header[1], header[2]);
	      FUNC2 (gdb_stdlog, "Message received: \"");
	      for (i = 0; i < len; ++i)
		{
		  FUNC2 (gdb_stdlog, "%02x", (unsigned char) buf[i]);
		}
	      FUNC2 (gdb_stdlog, "\"\n");
	    }

	  /* no ack required? */
	  return len;
	}

      /* Try the whole thing again.  */
    retry:
      /* need to do something here */
      ;
    }

  /* We have tried hard enough, and just can't receive the packet.  Give up. */

  FUNC5 ("Ignoring packet error, continuing...\n");
  return 0;
}