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
struct TYPE_3__ {scalar_t__ refcnt; int /*<<< orphan*/  end; scalar_t__ start; int /*<<< orphan*/  color; int /*<<< orphan*/ * right; int /*<<< orphan*/ * left; int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  IBV_BLACK ; 
 int /*<<< orphan*/  MADV_DOFORK ; 
 int /*<<< orphan*/  MADV_DONTFORK ; 
 int /*<<< orphan*/  UINTPTR_MAX ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 unsigned long FUNC1 (void*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int huge_page_enabled ; 
 scalar_t__ FUNC3 (void*,unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int) ; 
 TYPE_1__* mm_root ; 
 unsigned long page_size ; 
 scalar_t__ FUNC5 (void**,unsigned long,unsigned long) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ too_late ; 

int FUNC7(void)
{
	void *tmp, *tmp_aligned;
	int ret;
	unsigned long size;

	if (FUNC2("RDMAV_HUGEPAGES_SAFE"))
		huge_page_enabled = 1;

	if (mm_root)
		return 0;

	if (too_late)
		return EINVAL;

	page_size = FUNC6(_SC_PAGESIZE);
	if (page_size < 0)
		return errno;

	if (FUNC5(&tmp, page_size, page_size))
		return ENOMEM;

	if (huge_page_enabled) {
		size = FUNC1(tmp);
		tmp_aligned = (void *) ((uintptr_t) tmp & ~(size - 1));
	} else {
		size = page_size;
		tmp_aligned = tmp;
	}

	ret = FUNC3(tmp_aligned, size, MADV_DONTFORK) ||
	      FUNC3(tmp_aligned, size, MADV_DOFORK);

	FUNC0(tmp);

	if (ret)
		return ENOSYS;

	mm_root = FUNC4(sizeof *mm_root);
	if (!mm_root)
		return ENOMEM;

	mm_root->parent = NULL;
	mm_root->left   = NULL;
	mm_root->right  = NULL;
	mm_root->color  = IBV_BLACK;
	mm_root->start  = 0;
	mm_root->end    = UINTPTR_MAX;
	mm_root->refcnt = 0;

	return 0;
}