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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
#define  SERIAL_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  mips_desc ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remote_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC5 (char *srec, int len, CORE_ADDR addr)
{
  while (1)
    {
      int ch;

      FUNC4 (mips_desc, srec, len);

      ch = FUNC2 (remote_timeout);

      switch (ch)
	{
	case SERIAL_TIMEOUT:
	  FUNC0 ("Timeout during download.");
	  break;
	case 0x6:		/* ACK */
	  return;
	case 0x15:		/* NACK */
	  FUNC1 (gdb_stderr, "Download got a NACK at byte %s!  Retrying.\n", FUNC3 (addr));
	  continue;
	default:
	  FUNC0 ("Download got unexpected ack char: 0x%x, retrying.\n", ch);
	}
    }
}