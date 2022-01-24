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
struct cuse_vm_allocation {void* ptr; scalar_t__ size; } ;
struct cuse_alloc_info {int alloc_nr; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int CUSE_ALLOC_UNIT_MAX ; 
 int /*<<< orphan*/  CUSE_IOCTL_FREE_MEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct cuse_vm_allocation* a_cuse ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ f_cuse ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,struct cuse_alloc_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct cuse_alloc_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__) ; 

void
FUNC6(void *ptr)
{
	struct cuse_vm_allocation temp;
	struct cuse_alloc_info info;
	int error;
	int n;

	if (f_cuse < 0)
		return;

	FUNC0();
	for (n = 0; n != CUSE_ALLOC_UNIT_MAX; n++) {
		if (a_cuse[n].ptr != ptr)
			continue;

		temp = a_cuse[n];

		FUNC1();

		FUNC5(temp.ptr, temp.size);

		FUNC4(&info, 0, sizeof(info));

		info.alloc_nr = n;

		error = FUNC3(f_cuse, CUSE_IOCTL_FREE_MEMORY, &info);

		if (error != 0) {
			/* ignore any errors */
			FUNC2("Freeing memory failed: %d\n", errno);
		}
		FUNC0();

		a_cuse[n].ptr = NULL;
		a_cuse[n].size = 0;

		break;
	}
	FUNC1();
}