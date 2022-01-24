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

/* Variables and functions */
 int HASH_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ _gc_count ; 
 int /*<<< orphan*/  _thr_list_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _thread_list ; 
 int /*<<< orphan*/  free_thread_lock ; 
 int /*<<< orphan*/  free_threadq ; 
 int inited ; 
 int /*<<< orphan*/  tcb_lock ; 
 int /*<<< orphan*/ * thr_hashtable ; 
 int total_threads ; 

void
FUNC4(void)
{
	int i;

	_gc_count = 0;
	total_threads = 1;
	FUNC3(&_thr_list_lock);
	FUNC1(&_thread_list);
	FUNC1(&free_threadq);
	FUNC2(&free_thread_lock);
	FUNC2(&tcb_lock);
	if (inited) {
		for (i = 0; i < HASH_QUEUES; ++i)
			FUNC0(&thr_hashtable[i]);
	}
	inited = 1;
}