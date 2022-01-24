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
 scalar_t__ EX_USAGE ; 
 char* ErrBuf ; 
 scalar_t__ ExitVal ; 
 scalar_t__ LMTPMode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2()
{
	if (LMTPMode)
		FUNC1("%s\r\n", ErrBuf);
	else
	{
		if (ExitVal != EX_USAGE)
			(void) FUNC0(stderr, "mail.local: ");
		FUNC0(stderr, "%s\n", ErrBuf);
	}
}