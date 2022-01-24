#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int refcnt; } ;
struct TYPE_7__ {TYPE_2__* ep; } ;
typedef  TYPE_1__ SCR ;
typedef  TYPE_2__ EXF ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_MODIFIED ; 
 int /*<<< orphan*/  M_ERR ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 

int
FUNC3(
	SCR *sp,
	int force)
{
	EXF *ep;

	ep = sp->ep;

	/* If no file loaded, return no modifications. */
	if (ep == NULL)
		return (0);

	/*
	 * If the file has been modified, we'll want to fail, unless forced
	 * or there's another open screen on this file.
	 */
	if (FUNC0(ep, F_MODIFIED) && ep->refcnt <= 1 && !force) {
		FUNC2(sp, M_ERR,
"264|File modified since last complete write; write or use ! to override");
		return (1);
	}

	return (FUNC1(sp, force));
}