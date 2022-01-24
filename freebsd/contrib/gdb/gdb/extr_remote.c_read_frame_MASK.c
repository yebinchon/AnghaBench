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
#define  SERIAL_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remote_debug ; 
 int /*<<< orphan*/  remote_timeout ; 

__attribute__((used)) static long
FUNC7 (char *buf,
	    long sizeof_buf)
{
  unsigned char csum;
  long bc;
  int c;

  csum = 0;
  bc = 0;

  while (1)
    {
      /* ASSERT (bc < sizeof_buf - 1) - space for trailing NUL */
      c = FUNC6 (remote_timeout);
      switch (c)
	{
	case SERIAL_TIMEOUT:
	  if (remote_debug)
	    FUNC1 ("Timeout in mid-packet, retrying\n", gdb_stdlog);
	  return -1;
	case '$':
	  if (remote_debug)
	    FUNC1 ("Saw new packet start in middle of old one\n",
			    gdb_stdlog);
	  return -1;		/* Start a new packet, count retries */
	case '#':
	  {
	    unsigned char pktcsum;
	    int check_0 = 0;
	    int check_1 = 0;

	    buf[bc] = '\0';

	    check_0 = FUNC6 (remote_timeout);
	    if (check_0 >= 0)
	      check_1 = FUNC6 (remote_timeout);

	    if (check_0 == SERIAL_TIMEOUT || check_1 == SERIAL_TIMEOUT)
	      {
		if (remote_debug)
		  FUNC1 ("Timeout in checksum, retrying\n", gdb_stdlog);
		return -1;
	      }
	    else if (check_0 < 0 || check_1 < 0)
	      {
		if (remote_debug)
		  FUNC1 ("Communication error in checksum\n", gdb_stdlog);
		return -1;
	      }

	    pktcsum = (FUNC2 (check_0) << 4) | FUNC2 (check_1);
	    if (csum == pktcsum)
              return bc;

	    if (remote_debug)
	      {
		FUNC0 (gdb_stdlog,
			      "Bad checksum, sentsum=0x%x, csum=0x%x, buf=",
				  pktcsum, csum);
		FUNC1 (buf, gdb_stdlog);
		FUNC1 ("\n", gdb_stdlog);
	      }
	    /* Number of characters in buffer ignoring trailing
               NUL. */
	    return -1;
	  }
	case '*':		/* Run length encoding */
          {
	    int repeat;
 	    csum += c;

	    c = FUNC6 (remote_timeout);
	    csum += c;
	    repeat = c - ' ' + 3;	/* Compute repeat count */

	    /* The character before ``*'' is repeated. */

	    if (repeat > 0 && repeat <= 255
		&& bc > 0
                && bc + repeat - 1 < sizeof_buf - 1)
	      {
		FUNC3 (&buf[bc], buf[bc - 1], repeat);
		bc += repeat;
		continue;
	      }

	    buf[bc] = '\0';
	    FUNC4 ("Repeat count %d too large for buffer: ", repeat);
	    FUNC5 (buf);
	    FUNC5 ("\n");
	    return -1;
	  }
	default:
	  if (bc < sizeof_buf - 1)
	    {
	      buf[bc++] = c;
	      csum += c;
	      continue;
	    }

	  buf[bc] = '\0';
	  FUNC5 ("Remote packet too long: ");
	  FUNC5 (buf);
	  FUNC5 ("\n");

	  return -1;
	}
    }
}