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
 int /*<<< orphan*/  LOAD_CMD ; 
 int /*<<< orphan*/  LOAD_CMD_UDP ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tftp_file ; 
 scalar_t__ tftp_in_use ; 
 int /*<<< orphan*/  tftp_localname ; 
 scalar_t__ udp_in_use ; 

__attribute__((used)) static void
FUNC4 (void)
{
  if (tftp_in_use)
    {
      /* Create the temporary download file.  */
      if ((tftp_file = FUNC0 (tftp_localname, "w")) == NULL)
	FUNC3 (tftp_localname);
    }
  else
    {
      FUNC2 (udp_in_use ? LOAD_CMD_UDP : LOAD_CMD, 0);
      FUNC1 ("Downloading from ");
      FUNC1 (udp_in_use ? "udp" : "tty0");
      FUNC1 (", ^C to abort\r\n");
    }
}