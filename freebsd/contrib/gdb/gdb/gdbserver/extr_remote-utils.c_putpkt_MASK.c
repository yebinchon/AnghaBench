#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* send_signal ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PBUFSIZ ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  remote_desc ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* the_target ; 
 void* FUNC8 (unsigned char) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC10 (char *buf)
{
  int i;
  unsigned char csum = 0;
  char *buf2;
  char buf3[1];
  int cnt = FUNC6 (buf);
  char *p;

  buf2 = FUNC3 (PBUFSIZ);

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
  *p++ = FUNC8 ((csum >> 4) & 0xf);
  *p++ = FUNC8 (csum & 0xf);

  *p = '\0';

  /* Send it over and over until we get a positive ack.  */

  do
    {
      int cc;

      if (FUNC9 (remote_desc, buf2, p - buf2) != p - buf2)
	{
	  FUNC4 ("putpkt(write)");
	  return -1;
	}

      if (remote_debug)
	{
	  FUNC1 (stderr, "putpkt (\"%s\"); [looking for ack]\n", buf2);
	  FUNC0 (stderr);
	}
      cc = FUNC5 (remote_desc, buf3, 1);
      if (remote_debug)
	{
	  FUNC1 (stderr, "[received '%c' (0x%x)]\n", buf3[0], buf3[0]);
	  FUNC0 (stderr);
	}

      if (cc <= 0)
	{
	  if (cc == 0)
	    FUNC1 (stderr, "putpkt(read): Got EOF\n");
	  else
	    FUNC4 ("putpkt(read)");

	  FUNC2 (buf2);
	  return -1;
	}

      /* Check for an input interrupt while we're here.  */
      if (buf3[0] == '\003')
	(*the_target->send_signal) (SIGINT);
    }
  while (buf3[0] != '+');

  FUNC2 (buf2);
  return 1;			/* Success! */
}