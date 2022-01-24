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
struct remote_state {long remote_packet_size; } ;

/* Variables and functions */
#define  SERIAL_TIMEOUT 128 
 char* FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 struct remote_state* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 scalar_t__ quit_flag ; 
 int /*<<< orphan*/  FUNC9 (char*,long) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  remote_desc ; 
 int /*<<< orphan*/  remote_timeout ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC12 (unsigned char) ; 

__attribute__((used)) static int
FUNC13 (char *buf, int cnt)
{
  struct remote_state *rs = FUNC5 ();
  int i;
  unsigned char csum = 0;
  char *buf2 = FUNC0 (cnt + 6);
  long sizeof_junkbuf = (rs->remote_packet_size);
  char *junkbuf = FUNC0 (sizeof_junkbuf);

  int ch;
  int tcount = 0;
  char *p;

  /* Copy the packet into buffer BUF2, encapsulating it
     and giving it a checksum.  */

  p = buf2;
  *p++ = '$';

  for (i = 0; i < cnt; i++)
    {
      csum += buf[i];
      *p++ = buf[i];
    }
  *p++ = '#';
  *p++ = FUNC12 ((csum >> 4) & 0xf);
  *p++ = FUNC12 (csum & 0xf);

  /* Send it over and over until we get a positive ack.  */

  while (1)
    {
      int started_error_output = 0;

      if (remote_debug)
	{
	  *p = '\0';
	  FUNC1 (gdb_stdlog, "Sending packet: ");
	  FUNC3 (buf2, p - buf2, 0, gdb_stdlog);
	  FUNC1 (gdb_stdlog, "...");
	  FUNC4 (gdb_stdlog);
	}
      if (FUNC11 (remote_desc, buf2, p - buf2))
	FUNC7 ("putpkt: write failed");

      /* read until either a timeout occurs (-2) or '+' is read */
      while (1)
	{
	  ch = FUNC10 (remote_timeout);

	  if (remote_debug)
	    {
	      switch (ch)
		{
		case '+':
		case '-':
		case SERIAL_TIMEOUT:
		case '$':
		  if (started_error_output)
		    {
		      FUNC8 ('\n');
		      started_error_output = 0;
		    }
		}
	    }

	  switch (ch)
	    {
	    case '+':
	      if (remote_debug)
		FUNC1 (gdb_stdlog, "Ack\n");
	      return 1;
	    case '-':
	      if (remote_debug)
		FUNC1 (gdb_stdlog, "Nak\n");
	    case SERIAL_TIMEOUT:
	      tcount++;
	      if (tcount > 3)
		return 0;
	      break;		/* Retransmit buffer */
	    case '$':
	      {
	        if (remote_debug)
		  FUNC1 (gdb_stdlog, "Packet instead of Ack, ignoring it\n");
		/* It's probably an old response, and we're out of sync.
		   Just gobble up the packet and ignore it.  */
		FUNC9 (junkbuf, sizeof_junkbuf);
		continue;	/* Now, go look for + */
	      }
	    default:
	      if (remote_debug)
		{
		  if (!started_error_output)
		    {
		      started_error_output = 1;
		      FUNC1 (gdb_stdlog, "putpkt: Junk: ");
		    }
		  FUNC2 (ch & 0177, gdb_stdlog);
		}
	      continue;
	    }
	  break;		/* Here to retransmit */
	}

#if 0
      /* This is wrong.  If doing a long backtrace, the user should be
         able to get out next time we call QUIT, without anything as
         violent as interrupt_query.  If we want to provide a way out of
         here without getting to the next QUIT, it should be based on
         hitting ^C twice as in remote_wait.  */
      if (quit_flag)
	{
	  quit_flag = 0;
	  interrupt_query ();
	}
#endif
    }
}