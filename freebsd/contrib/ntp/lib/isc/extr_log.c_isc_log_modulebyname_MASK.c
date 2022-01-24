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
struct TYPE_7__ {scalar_t__ id; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ isc_logmodule_t ;
struct TYPE_8__ {TYPE_1__* modules; } ;
typedef  TYPE_2__ isc_log_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 

isc_logmodule_t *
FUNC4(isc_log_t *lctx, const char *name) {
	isc_logmodule_t *modp;

	FUNC1(FUNC2(lctx));
	FUNC1(name != NULL);

	for (modp = lctx->modules; modp->name != NULL; )
		if (modp->id == UINT_MAX)
			/*
			 * modp is neither modified nor returned to the
			 * caller, so removing its const qualifier is ok.
			 */
			FUNC0(modp->name, modp);
		else {
			if (FUNC3(modp->name, name) == 0)
				return (modp);
			modp++;
		}

	return (NULL);
}