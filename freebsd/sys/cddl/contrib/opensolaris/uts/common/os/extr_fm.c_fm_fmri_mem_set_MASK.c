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
 int /*<<< orphan*/  FM_FMRI_AUTHORITY ; 
 int /*<<< orphan*/  FM_FMRI_MEM_OFFSET ; 
 int /*<<< orphan*/  FM_FMRI_MEM_SERIAL_ID ; 
 int /*<<< orphan*/  FM_FMRI_MEM_UNUM ; 
 int /*<<< orphan*/  FM_FMRI_SCHEME ; 
 char const* FM_FMRI_SCHEME_MEM ; 
 int /*<<< orphan*/  FM_VERSION ; 
 int MEM_SCHEME_VERSION0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__ erpt_kstat_data ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC6(nvlist_t *fmri, int version, const nvlist_t *auth,
    const char *unum, const char *serial, uint64_t offset)
{
	if (version != MEM_SCHEME_VERSION0) {
		FUNC0(&erpt_kstat_data.fmri_set_failed.value.ui64);
		return;
	}

	if (!serial && (offset != (uint64_t)-1)) {
		FUNC0(&erpt_kstat_data.fmri_set_failed.value.ui64);
		return;
	}

	if (FUNC5(fmri, FM_VERSION, version) != 0) {
		FUNC0(&erpt_kstat_data.fmri_set_failed.value.ui64);
		return;
	}

	if (FUNC2(fmri, FM_FMRI_SCHEME, FM_FMRI_SCHEME_MEM) != 0) {
		FUNC0(&erpt_kstat_data.fmri_set_failed.value.ui64);
		return;
	}

	if (auth != NULL) {
		if (FUNC1(fmri, FM_FMRI_AUTHORITY,
		    (nvlist_t *)auth) != 0) {
			FUNC0(
			    &erpt_kstat_data.fmri_set_failed.value.ui64);
		}
	}

	if (FUNC2(fmri, FM_FMRI_MEM_UNUM, unum) != 0) {
		FUNC0(&erpt_kstat_data.fmri_set_failed.value.ui64);
	}

	if (serial != NULL) {
		if (FUNC3(fmri, FM_FMRI_MEM_SERIAL_ID,
		    (char **)&serial, 1) != 0) {
			FUNC0(
			    &erpt_kstat_data.fmri_set_failed.value.ui64);
		}
		if (offset != (uint64_t)-1 && FUNC4(fmri,
		    FM_FMRI_MEM_OFFSET, offset) != 0) {
			FUNC0(
			    &erpt_kstat_data.fmri_set_failed.value.ui64);
		}
	}
}