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
struct _citrus_stdenc {scalar_t__ ce_module; struct _citrus_stdenc* ce_traits; struct _citrus_stdenc* ce_ops; int /*<<< orphan*/  (* eo_uninit ) (struct _citrus_stdenc*) ;scalar_t__ ce_closure; } ;

/* Variables and functions */
 struct _citrus_stdenc _citrus_stdenc_default ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct _citrus_stdenc*) ; 
 int /*<<< orphan*/  FUNC2 (struct _citrus_stdenc*) ; 

void
FUNC3(struct _citrus_stdenc *ce)
{

	if (ce == &_citrus_stdenc_default)
		return;

	if (ce->ce_module) {
		if (ce->ce_ops) {
			if (ce->ce_closure && ce->ce_ops->eo_uninit)
				(*ce->ce_ops->eo_uninit)(ce);
			FUNC1(ce->ce_ops);
		}
		FUNC1(ce->ce_traits);
		FUNC0(ce->ce_module);
	}
	FUNC1(ce);
}