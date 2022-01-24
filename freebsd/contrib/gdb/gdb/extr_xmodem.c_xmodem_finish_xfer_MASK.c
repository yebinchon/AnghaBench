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
#define  ACK 130 
#define  CANCEL 129 
#define  NAK 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int FUNC2 (struct serial*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct serial*,char*,int) ; 

void
FUNC4 (struct serial *desc)
{
  int retries;

  for (retries = 10; retries >= 0; retries--)
    {
      int c;

      FUNC3 (desc, "\004", 1);	/* Send an EOT */

      c = FUNC2 (desc, 3);
      switch (c)
	{
	case ACK:
	  return;
	case NAK:
	  continue;
	case CANCEL:
	  FUNC0 ("xmodem_finish_xfer: Transfer aborted by receiver.");
	default:
	  FUNC1 (gdb_stderr, "xmodem_send_packet: Got unexpected character %c (0%o)\n", c, c);
	  continue;
	}
    }

  FUNC0 ("xmodem_finish_xfer:  Excessive retries.");
}