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
struct pt_image_section_cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  name; int /*<<< orphan*/  limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_image_section_cache*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtx_plain ; 
 int pte_bad_lock ; 
 int pte_internal ; 
 int pte_nomem ; 
 int thrd_success ; 

int FUNC3(struct pt_image_section_cache *iscache, const char *name)
{
	if (!iscache)
		return -pte_internal;

	FUNC1(iscache, 0, sizeof(*iscache));
	iscache->limit = UINT64_MAX;
	if (name) {
		iscache->name = FUNC0(name);
		if (!iscache->name)
			return -pte_nomem;
	}

#if defined(FEATURE_THREADS)
	{
		int errcode;

		errcode = mtx_init(&iscache->lock, mtx_plain);
		if (errcode != thrd_success)
			return -pte_bad_lock;
	}
#endif /* defined(FEATURE_THREADS) */

	return 0;
}