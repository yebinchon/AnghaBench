#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_4__ {int /*<<< orphan*/  ui64; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
struct TYPE_6__ {TYPE_2__ fmri_set_failed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM_FMRI_SCHEME ; 
 int /*<<< orphan*/  FM_FMRI_SCHEME_ZFS ; 
 int /*<<< orphan*/  FM_FMRI_ZFS_POOL ; 
 int /*<<< orphan*/  FM_FMRI_ZFS_VDEV ; 
 int /*<<< orphan*/  FM_VERSION ; 
 int ZFS_SCHEME_VERSION0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__ erpt_kstat_data ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC4(nvlist_t *fmri, int version, uint64_t pool_guid,
    uint64_t vdev_guid)
{
	if (version != ZFS_SCHEME_VERSION0) {
		FUNC0(&erpt_kstat_data.fmri_set_failed.value.ui64);
		return;
	}

	if (FUNC3(fmri, FM_VERSION, version) != 0) {
		FUNC0(&erpt_kstat_data.fmri_set_failed.value.ui64);
		return;
	}

	if (FUNC1(fmri, FM_FMRI_SCHEME, FM_FMRI_SCHEME_ZFS) != 0) {
		FUNC0(&erpt_kstat_data.fmri_set_failed.value.ui64);
		return;
	}

	if (FUNC2(fmri, FM_FMRI_ZFS_POOL, pool_guid) != 0) {
		FUNC0(&erpt_kstat_data.fmri_set_failed.value.ui64);
	}

	if (vdev_guid != 0) {
		if (FUNC2(fmri, FM_FMRI_ZFS_VDEV, vdev_guid) != 0) {
			FUNC0(
			    &erpt_kstat_data.fmri_set_failed.value.ui64);
		}
	}
}