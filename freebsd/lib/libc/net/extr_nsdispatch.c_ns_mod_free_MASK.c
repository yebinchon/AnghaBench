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
struct TYPE_3__ {int /*<<< orphan*/ * handle; int /*<<< orphan*/  mtabsize; int /*<<< orphan*/  mtab; int /*<<< orphan*/  (* unregister ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ ns_mod ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exiting ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nss_builtin_handle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(ns_mod *mod)
{

	FUNC1(mod->name);
	if (mod->handle == NULL)
		return;
	if (mod->unregister != NULL)
		mod->unregister(mod->mtab, mod->mtabsize);
	if (mod->handle != nss_builtin_handle && !exiting)
		(void)FUNC0(mod->handle);
}