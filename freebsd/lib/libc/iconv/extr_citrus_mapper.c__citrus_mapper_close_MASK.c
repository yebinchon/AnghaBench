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
struct _citrus_mapper {scalar_t__ cm_refcount; int /*<<< orphan*/  cm_key; } ;

/* Variables and functions */
 scalar_t__ REFCOUNT_PERSISTENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct _citrus_mapper*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cm_entry ; 
 int /*<<< orphan*/  cm_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct _citrus_mapper*) ; 

void
FUNC5(struct _citrus_mapper *cm)
{

	if (cm) {
		FUNC1(&cm_lock);
		if (cm->cm_refcount == REFCOUNT_PERSISTENT)
			goto quit;
		if (cm->cm_refcount > 0) {
			if (--cm->cm_refcount > 0)
				goto quit;
			FUNC2(cm, cm_entry);
			FUNC3(cm->cm_key);
		}
		FUNC0(&cm_lock);
		FUNC4(cm);
		return;
quit:
		FUNC0(&cm_lock);
	}
}