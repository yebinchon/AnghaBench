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
 int /*<<< orphan*/  REFID_HASH ; 
 int /*<<< orphan*/  REFID_IPV4 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  drefid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC2 () ; 

__attribute__((used)) static void
FUNC3(
	struct parse *pcmd,
	FILE *fp
	)
{
	if (pcmd->nargs == 0) {
		(void) FUNC1(fp, "drefid value is %s\n", FUNC2());
		return;
	} else if (FUNC0(pcmd->argval[0].string, "hash")) {
		drefid = REFID_HASH;
	} else if (FUNC0(pcmd->argval[0].string, "ipv4")) {
		drefid = REFID_IPV4;
	} else {
		(void) FUNC1(fp, "What?\n");
		return;
	}
	(void) FUNC1(fp, "drefid value set to %s\n", FUNC2());
}