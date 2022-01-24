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
typedef  TYPE_1__* pmap_t ;
struct TYPE_3__ {int /*<<< orphan*/  pm_cookie; } ;

/* Variables and functions */
 int ASID_FIRST_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ asid_epoch ; 
 int asid_next ; 
 int /*<<< orphan*/  asid_set ; 
 int /*<<< orphan*/  asid_set_mutex ; 
 int asid_set_size ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(pmap_t pmap)
{
	int new_asid;

	FUNC5(&asid_set_mutex);

	/*
	 * While this processor was waiting to acquire the asid set mutex,
	 * pmap_reset_asid_set() running on another processor might have
	 * updated this pmap's cookie to the current epoch.  In which case, we
	 * don't need to allocate a new ASID.
	 */
	if (FUNC1(pmap->pm_cookie) == asid_epoch)
		goto out;

	FUNC3(asid_set, asid_next, asid_set_size, &new_asid);
	if (new_asid == -1) {
		FUNC3(asid_set, ASID_FIRST_AVAILABLE, asid_next,
		    &new_asid);
		if (new_asid == -1) {
			FUNC7();
			FUNC3(asid_set, ASID_FIRST_AVAILABLE,
			    asid_set_size, &new_asid);
			FUNC2(new_asid != -1, ("ASID allocation failure"));
		}
	}
	FUNC4(asid_set, new_asid);
	asid_next = new_asid + 1;
	pmap->pm_cookie = FUNC0(new_asid, asid_epoch);
out:
	FUNC6(&asid_set_mutex);
}