#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_id_t ;
struct TYPE_3__ {char* dtargd_native; int /*<<< orphan*/  dtargd_ndx; } ;
typedef  TYPE_1__ dtrace_argdesc_t ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACE_ARGNONE ; 
 scalar_t__ FUNC0 (uintptr_t) ; 
 int FUNC1 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC4(void *arg, dtrace_id_t id, void *parg,
    dtrace_argdesc_t *desc)
{
	int sysnum = FUNC1((uintptr_t)parg);

	if (FUNC0((uintptr_t)parg))
		FUNC2(sysnum, desc->dtargd_ndx,
		    desc->dtargd_native, sizeof(desc->dtargd_native));
	else
		FUNC3(sysnum, desc->dtargd_ndx,
		    desc->dtargd_native, sizeof(desc->dtargd_native));

	if (desc->dtargd_native[0] == '\0')
		desc->dtargd_ndx = DTRACE_ARGNONE;
}