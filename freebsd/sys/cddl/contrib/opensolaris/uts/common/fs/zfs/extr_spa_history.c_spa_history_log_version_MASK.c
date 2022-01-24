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
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_2__ {int /*<<< orphan*/  machine; int /*<<< orphan*/  version; int /*<<< orphan*/  release; int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPA_VERSION ; 
 int /*<<< orphan*/  ZPL_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ utsname ; 

void
FUNC2(spa_t *spa, const char *operation)
{
	FUNC0(spa, operation, NULL,
	    "pool version %llu; software version %llu/%llu; uts %s %s %s %s",
	    (u_longlong_t)FUNC1(spa), SPA_VERSION, ZPL_VERSION,
	    utsname.nodename, utsname.release, utsname.version,
	    utsname.machine);
}