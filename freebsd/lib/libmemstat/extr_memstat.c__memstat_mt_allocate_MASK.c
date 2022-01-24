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
struct mt_percpu_cache_s {int dummy; } ;
struct mt_percpu_alloc_s {int dummy; } ;
struct memory_type_list {int /*<<< orphan*/  mtl_list; } ;
struct memory_type {int mt_allocator; int /*<<< orphan*/  mt_name; void* mt_percpu_cache; void* mt_percpu_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct memory_type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEMTYPE_MAXNAME ; 
 int /*<<< orphan*/  FUNC1 (struct memory_type*,int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  mt_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

struct memory_type *
FUNC4(struct memory_type_list *list, int allocator,
    const char *name, int maxcpus)
{
	struct memory_type *mtp;

	mtp = FUNC2(sizeof(*mtp));
	if (mtp == NULL)
		return (NULL);

	FUNC1(mtp, sizeof(*mtp));

	mtp->mt_allocator = allocator;
	mtp->mt_percpu_alloc = FUNC2(sizeof(struct mt_percpu_alloc_s) *
	    maxcpus);
	mtp->mt_percpu_cache = FUNC2(sizeof(struct mt_percpu_cache_s) *
	    maxcpus);
	FUNC3(mtp->mt_name, name, MEMTYPE_MAXNAME);
	FUNC0(&list->mtl_list, mtp, mt_list);
	return (mtp);
}