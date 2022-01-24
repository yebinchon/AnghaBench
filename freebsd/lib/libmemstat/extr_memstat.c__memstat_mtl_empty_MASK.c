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
struct memory_type_list {int /*<<< orphan*/  mtl_list; } ;
struct memory_type {struct memory_type* mt_percpu_cache; struct memory_type* mt_percpu_alloc; } ;

/* Variables and functions */
 struct memory_type* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct memory_type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct memory_type*) ; 
 int /*<<< orphan*/  mt_list ; 

void
FUNC3(struct memory_type_list *list)
{
	struct memory_type *mtp;

	while ((mtp = FUNC0(&list->mtl_list))) {
		FUNC2(mtp->mt_percpu_alloc);
		FUNC2(mtp->mt_percpu_cache);
		FUNC1(mtp, mt_list);
		FUNC2(mtp);
	}
}