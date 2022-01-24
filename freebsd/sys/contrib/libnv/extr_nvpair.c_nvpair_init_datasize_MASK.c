#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ nvp_type; scalar_t__ nvp_data; scalar_t__ nvp_datasize; } ;
typedef  TYPE_1__ nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ NV_TYPE_NVLIST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 

void
FUNC2(nvpair_t *nvp)
{

	FUNC0(nvp);

	if (nvp->nvp_type == NV_TYPE_NVLIST) {
		if (nvp->nvp_data == 0) {
			nvp->nvp_datasize = 0;
		} else {
			nvp->nvp_datasize =
			    FUNC1((const nvlist_t *)(intptr_t)nvp->nvp_data);
		}
	}
}