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
 int /*<<< orphan*/  PBUFSIZ ; 
#define  SERIAL_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remote_debug ; 
 int /*<<< orphan*/  sds_timeout ; 

__attribute__((used)) static int
FUNC4 (char *buf)
{
  char *bp;
  int c;

  bp = buf;

  while (1)
    {
      c = FUNC3 (sds_timeout);

      switch (c)
	{
	case SERIAL_TIMEOUT:
	  if (remote_debug)
	    FUNC1 ("Timeout in mid-message, retrying\n", gdb_stdlog);
	  return 0;
	case '$':
	  if (remote_debug)
	    FUNC1 ("Saw new packet start in middle of old one\n",
			    gdb_stdlog);
	  return 0;		/* Start a new packet, count retries */
	case '\r':
	  break;

	case '\n':
	  {
	    *bp = '\000';
	    if (remote_debug)
	      FUNC0 (gdb_stdlog, "Received encoded: \"%s\"\n",
				  buf);
	    return 1;
	  }

	default:
	  if (bp < buf + PBUFSIZ - 1)
	    {
	      *bp++ = c;
	      continue;
	    }

	  *bp = '\0';
	  FUNC2 ("Message too long: ");
	  FUNC2 (buf);
	  FUNC2 ("\n");

	  return 0;
	}
    }
}