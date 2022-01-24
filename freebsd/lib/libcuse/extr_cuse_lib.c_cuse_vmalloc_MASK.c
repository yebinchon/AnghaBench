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
typedef  int /*<<< orphan*/  uint8_t ;
struct cuse_alloc_info {int page_count; int alloc_nr; } ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_2__ {int size; int /*<<< orphan*/ * ptr; } ;

/* Variables and functions */
 int CUSE_ALLOC_PAGES_MAX ; 
 int CUSE_ALLOC_UNIT_MAX ; 
 int /*<<< orphan*/  CUSE_IOCTL_ALLOC_MEMORY ; 
 int /*<<< orphan*/  CUSE_IOCTL_FREE_MEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ EBUSY ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int PAGE_SIZE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 TYPE_1__* a_cuse ; 
 scalar_t__ errno ; 
 scalar_t__ f_cuse ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,struct cuse_alloc_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct cuse_alloc_info*,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,scalar_t__,int) ; 

void   *
FUNC6(int size)
{
	struct cuse_alloc_info info;
	void *ptr;
	int error;
	int n;

	if (f_cuse < 0)
		return (NULL);

	FUNC4(&info, 0, sizeof(info));

	if (size < 1)
		return (NULL);

	info.page_count = FUNC2(size, PAGE_SIZE);

	FUNC0();
	for (n = 0; n != CUSE_ALLOC_UNIT_MAX; n++) {

		if (a_cuse[n].ptr != NULL)
			continue;

		a_cuse[n].ptr = ((uint8_t *)1);	/* reserve */
		a_cuse[n].size = 0;

		FUNC1();

		info.alloc_nr = n;

		error = FUNC3(f_cuse, CUSE_IOCTL_ALLOC_MEMORY, &info);

		if (error) {

			FUNC0();

			a_cuse[n].ptr = NULL;

			if (errno == EBUSY)
				continue;
			else
				break;
		}
		ptr = FUNC5(NULL, info.page_count * PAGE_SIZE,
		    PROT_READ | PROT_WRITE,
		    MAP_SHARED, f_cuse, CUSE_ALLOC_PAGES_MAX *
		    PAGE_SIZE * n);

		if (ptr == MAP_FAILED) {

			error = FUNC3(f_cuse, CUSE_IOCTL_FREE_MEMORY, &info);

			if (error) {
				/* ignore */
			}
			FUNC0();

			a_cuse[n].ptr = NULL;

			break;
		}
		FUNC0();
		a_cuse[n].ptr = ptr;
		a_cuse[n].size = size;
		FUNC1();

		return (ptr);		/* success */
	}
	FUNC1();
	return (NULL);			/* failure */
}