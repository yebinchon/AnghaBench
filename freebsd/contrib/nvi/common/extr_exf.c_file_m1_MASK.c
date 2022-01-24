#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int refcnt; } ;
struct TYPE_9__ {TYPE_2__* ep; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ EXF ;

/* Variables and functions */
 int /*<<< orphan*/  FS_POSSIBLE ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_MODIFIED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  O_AUTOWRITE ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 

int
FUNC6(
	SCR *sp,
	int force,
	int flags)
{
	EXF *ep;

	ep = sp->ep;

	/* If no file loaded, return no modifications. */
	if (ep == NULL)
		return (0);

	/*
	 * If the file has been modified, we'll want to write it back or
	 * fail.  If autowrite is set, we'll write it back automatically,
	 * unless force is also set.  Otherwise, we fail unless forced or
	 * there's another open screen on this file.
	 */
	if (FUNC0(ep, F_MODIFIED))
		if (FUNC2(sp, O_AUTOWRITE)) {
			if (!force && FUNC3(sp, flags))
				return (1);
		} else if (ep->refcnt <= 1 && !force) {
			FUNC5(sp, M_ERR, FUNC1(FS_POSSIBLE) ?
"262|File modified since last complete write; write or use ! to override" :
"263|File modified since last complete write; write or use :edit! to override");
			return (1);
		}

	return (FUNC4(sp, force));
}