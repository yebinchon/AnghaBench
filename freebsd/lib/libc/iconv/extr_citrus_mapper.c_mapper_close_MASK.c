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
struct _citrus_mapper {struct _citrus_mapper* cm_traits; scalar_t__ cm_module; struct _citrus_mapper* cm_ops; int /*<<< orphan*/  (* mo_uninit ) (struct _citrus_mapper*) ;scalar_t__ cm_closure; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct _citrus_mapper*) ; 
 int /*<<< orphan*/  FUNC2 (struct _citrus_mapper*) ; 

__attribute__((used)) static void
FUNC3(struct _citrus_mapper *cm)
{
	if (cm->cm_module) {
		if (cm->cm_ops) {
			if (cm->cm_closure)
				(*cm->cm_ops->mo_uninit)(cm);
			FUNC1(cm->cm_ops);
		}
		FUNC0(cm->cm_module);
	}
	FUNC1(cm->cm_traits);
	FUNC1(cm);
}