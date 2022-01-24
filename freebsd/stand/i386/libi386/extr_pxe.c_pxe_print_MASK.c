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
struct TYPE_2__ {char* dv_name; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/ * pxe_call ; 
 TYPE_1__ pxedisk ; 
 int /*<<< orphan*/  rootip ; 
 char* rootpath ; 

__attribute__((used)) static int
FUNC3(int verbose)
{
	if (pxe_call == NULL)
		return (0);

	FUNC2("%s devices:", pxedisk.dv_name);
	if (FUNC1("\n") != 0)
		return (1);
	FUNC2("    %s0:", pxedisk.dv_name);
	if (verbose) {
		FUNC2("    %s:%s", FUNC0(rootip), rootpath);
	}
	return (FUNC1("\n"));
}