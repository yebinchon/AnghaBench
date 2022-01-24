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

/* Variables and functions */
 scalar_t__ ISC_FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * ectx ; 
 scalar_t__ hash_active ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * lctx ; 
 int /*<<< orphan*/ * mctx ; 
 int /*<<< orphan*/ * taskmgr ; 

void
FUNC6() {
	if (taskmgr != NULL)
		FUNC5(&taskmgr);
	if (lctx != NULL)
		FUNC3(&lctx);
	if (hash_active) {
		FUNC2();
		hash_active = ISC_FALSE;
	}
	if (ectx != NULL)
		FUNC1(&ectx);

	FUNC0();

	if (mctx != NULL)
		FUNC4(&mctx);
}