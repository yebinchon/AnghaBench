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
 int /*<<< orphan*/  FUNC0 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int code ; 
 int verbose ; 

void
FUNC2(int argc, char *argv[])
{
	int oldverbose = verbose;

	if (argc < 1 || argc > 2) {
		FUNC1("usage: %s [seconds]\n", argv[0]);
		code = -1;
		return;
	}
	verbose = 1;
	FUNC0(argc, argv, "SITE IDLE");
	verbose = oldverbose;
}