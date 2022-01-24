#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct parse {scalar_t__ nargs; TYPE_1__* argval; } ;
struct TYPE_2__ {int /*<<< orphan*/  string; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int always_auth ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * stderr ; 

__attribute__((used)) static void
FUNC2(
	struct parse *pcmd,
	FILE *fp
	)
{
	if (pcmd->nargs == 0) {
		if (always_auth) {
			(void) FUNC1(fp,
				       "authenticated requests being sent\n");
		} else
		    (void) FUNC1(fp,
				   "unauthenticated requests being sent\n");
	} else {
		if (FUNC0(pcmd->argval[0].string, "yes")) {
			always_auth = 1;
		} else if (FUNC0(pcmd->argval[0].string, "no")) {
			always_auth = 0;
		} else
		    (void)FUNC1(stderr, "What?\n");
	}
}