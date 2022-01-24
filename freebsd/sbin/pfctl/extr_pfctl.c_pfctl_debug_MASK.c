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
typedef  int u_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCSETDEBUG ; 
#define  PF_DEBUG_MISC 131 
#define  PF_DEBUG_NOISY 130 
#define  PF_DEBUG_NONE 129 
#define  PF_DEBUG_URGENT 128 
 int PF_OPT_QUIET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC3(int dev, u_int32_t level, int opts)
{
	if (FUNC2(dev, DIOCSETDEBUG, &level))
		FUNC0(1, "DIOCSETDEBUG");
	if ((opts & PF_OPT_QUIET) == 0) {
		FUNC1(stderr, "debug level set to '");
		switch (level) {
		case PF_DEBUG_NONE:
			FUNC1(stderr, "none");
			break;
		case PF_DEBUG_URGENT:
			FUNC1(stderr, "urgent");
			break;
		case PF_DEBUG_MISC:
			FUNC1(stderr, "misc");
			break;
		case PF_DEBUG_NOISY:
			FUNC1(stderr, "loud");
			break;
		default:
			FUNC1(stderr, "<invalid>");
			break;
		}
		FUNC1(stderr, "'\n");
	}
}