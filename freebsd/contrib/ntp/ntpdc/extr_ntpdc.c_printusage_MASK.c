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
struct xcmd {char* keyword; int* arg; char** desc; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXARGS ; 
 int NO ; 
 int NTP_ADD ; 
 int OPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC1(
	struct xcmd *xcp,
	FILE *fp
	)
{
	int i, opt46;

	opt46 = 0;
	(void) FUNC0(fp, "usage: %s", xcp->keyword);
	for (i = 0; i < MAXARGS && xcp->arg[i] != NO; i++) {
		if (opt46 == 0 && (xcp->arg[i] & ~OPT) == NTP_ADD) {
			(void) FUNC0(fp, " [ -4|-6 ]");
			opt46 = 1;
		}
		if (xcp->arg[i] & OPT)
		    (void) FUNC0(fp, " [ %s ]", xcp->desc[i]);
		else
		    (void) FUNC0(fp, " %s", xcp->desc[i]);
	}
	(void) FUNC0(fp, "\n");
}