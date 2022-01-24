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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned char FUNC2 (int) ; 
 int FUNC3 () ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  remote_desc ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC5 (char *buf)
{
  char *bp;
  unsigned char csum, c1, c2;
  int c;

  while (1)
    {
      csum = 0;

      while (1)
	{
	  c = FUNC3 ();
	  if (c == '$')
	    break;
	  if (remote_debug)
	    {
	      FUNC1 (stderr, "[getpkt: discarding char '%c']\n", c);
	      FUNC0 (stderr);
	    }

	  if (c < 0)
	    return -1;
	}

      bp = buf;
      while (1)
	{
	  c = FUNC3 ();
	  if (c < 0)
	    return -1;
	  if (c == '#')
	    break;
	  *bp++ = c;
	  csum += c;
	}
      *bp = 0;

      c1 = FUNC2 (FUNC3 ());
      c2 = FUNC2 (FUNC3 ());

      if (csum == (c1 << 4) + c2)
	break;

      FUNC1 (stderr, "Bad checksum, sentsum=0x%x, csum=0x%x, buf=%s\n",
	       (c1 << 4) + c2, csum, buf);
      FUNC4 (remote_desc, "-", 1);
    }

  if (remote_debug)
    {
      FUNC1 (stderr, "getpkt (\"%s\");  [sending ack] \n", buf);
      FUNC0 (stderr);
    }

  FUNC4 (remote_desc, "+", 1);

  if (remote_debug)
    {
      FUNC1 (stderr, "[sent ack]\n");
      FUNC0 (stderr);
    }

  return bp - buf;
}