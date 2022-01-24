#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zil_header_t ;
struct TYPE_2__ {int /*<<< orphan*/  os_groupused_dnode; int /*<<< orphan*/  os_userused_dnode; void* os_flags; void* os_type; int /*<<< orphan*/  os_zil_header; int /*<<< orphan*/  os_meta_dnode; } ;
typedef  TYPE_1__ objset_phys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (void*) ; 
 size_t OBJSET_OLD_PHYS_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(void *buf, size_t size)
{
	objset_phys_t *osp = buf;

	FUNC0(size == OBJSET_OLD_PHYS_SIZE || size == sizeof (objset_phys_t));
	FUNC3(&osp->os_meta_dnode);
	FUNC2(&osp->os_zil_header, sizeof (zil_header_t));
	osp->os_type = FUNC1(osp->os_type);
	osp->os_flags = FUNC1(osp->os_flags);
	if (size == sizeof (objset_phys_t)) {
		FUNC3(&osp->os_userused_dnode);
		FUNC3(&osp->os_groupused_dnode);
	}
}