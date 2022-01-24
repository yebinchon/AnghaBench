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
 scalar_t__ code ; 
 scalar_t__ ntflag ; 
 char* ntin ; 
 char* ntout ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

void
FUNC2(int argc, char **argv)
{
	if (argc == 1) {
		ntflag = 0;
		FUNC0("Ntrans off.\n");
		code = ntflag;
		return;
	}
	ntflag++;
	code = ntflag;
	FUNC1 (ntin, argv[1], 17);
	if (argc == 2) {
		ntout[0] = '\0';
		return;
	}
	FUNC1 (ntout, argv[2], 17);
}