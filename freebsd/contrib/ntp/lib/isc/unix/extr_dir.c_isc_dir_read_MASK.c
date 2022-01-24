#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_5__ {int length; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__ entry; int /*<<< orphan*/ * handle; } ;
typedef  TYPE_2__ isc_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_NOMORE ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  ISC_R_UNEXPECTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 struct dirent* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

isc_result_t
FUNC5(isc_dir_t *dir) {
	struct dirent *entry;
	size_t octets;

	FUNC0(FUNC1(dir) && dir->handle != NULL);

	/*
	 * Fetch next file in directory.
	 */
	entry = FUNC2(dir->handle);

	if (entry == NULL)
		return (ISC_R_NOMORE);

	/*
	 * Make sure that the space for the name is long enough.
	 */
	octets = FUNC4(entry->d_name) + 1;
	if (sizeof(dir->entry.name) < octets)
		return (ISC_R_UNEXPECTED);

	FUNC3(dir->entry.name, entry->d_name, octets);

	/*
	 * Some dirents have d_namlen, but it is not portable.
	 */
	dir->entry.length = FUNC4(entry->d_name);

	return (ISC_R_SUCCESS);
}