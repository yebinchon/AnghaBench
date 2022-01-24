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
struct serial {int dummy; } ;

/* Variables and functions */
#define  CANCEL 129 
#define  NAK 128 
 int blknum ; 
 int crcflag ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int FUNC3 (struct serial*,int) ; 

int
FUNC4 (struct serial *desc)
{
  int c;
  int i;

  blknum = 1;
  crcflag = 0;
  FUNC0 ();

  for (i = 1; i <= 10; i++)
    {
      c = FUNC3 (desc, 6);

      switch (c)
	{
	case 'C':
	  crcflag = 1;
	case NAK:
	  return 0;
	default:
	  FUNC2 (gdb_stderr, "xmodem_init_xfer: Got unexpected character %c (0%o)\n", c, c);
	  continue;
	case CANCEL:		/* target aborted load */
	  FUNC2 (gdb_stderr, "Got a CANCEL from the target.\n");
	  continue;
	}
    }
  FUNC1 ("xmodem_init_xfer:  Too many unexpected characters.");
}