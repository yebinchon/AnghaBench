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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int rd_port ; 

int
FUNC5(int argc, char **argv)
{
    int num_pnp_devs;

#ifdef __i386__
    /* Hey what about a i386_iopl() call :) */
    if (open("/dev/io", O_RDONLY) < 0)
	errx(1, "can't get I/O privilege");
#endif

    FUNC4("Checking for Plug-n-Play devices...\n");

    /* Try various READ_DATA ports from 0x203-0x3ff */
    for (rd_port = 0x80; (rd_port < 0xff); rd_port += 0x10) {
	FUNC0(FUNC4("Trying Read_Port at %x...\n", (rd_port << 2) | 0x3) );
	num_pnp_devs = FUNC2();
	if (num_pnp_devs)
	    break;
    }
    if (!num_pnp_devs) {
	FUNC4("No Plug-n-Play devices were found\n");
	return (0);
    }
    return (0);
}