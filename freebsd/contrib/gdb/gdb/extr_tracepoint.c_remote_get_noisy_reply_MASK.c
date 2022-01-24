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
 int /*<<< orphan*/  QUIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static char *
FUNC4 (char *buf,
			long sizeof_buf)
{
  do				/* loop on reply from remote stub */
    {
      QUIT;			/* allow user to bail out with ^C */
      FUNC1 (buf, sizeof_buf, 0);
      if (buf[0] == 0)
	FUNC0 ("Target does not support this command.");
      else if (buf[0] == 'E')
	FUNC3 (buf);
      else if (buf[0] == 'O' &&
	       buf[1] != 'K')
	FUNC2 (buf + 1);	/* 'O' message from stub */
      else
	return buf;		/* here's the actual reply */
    }
  while (1);
}