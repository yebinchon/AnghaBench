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
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;

/* Variables and functions */
 int HASH_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  PTHREAD_MUTEX_NORMAL ; 
 int /*<<< orphan*/  PTHREAD_SCOPE_SYSTEM ; 
 int /*<<< orphan*/  __sigev_fork_child ; 
 int /*<<< orphan*/  __sigev_fork_parent ; 
 int /*<<< orphan*/  __sigev_fork_prepare ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int atfork_registered ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  sigev_all ; 
 int /*<<< orphan*/  sigev_default_attr ; 
 int /*<<< orphan*/ * sigev_default_thread ; 
 int /*<<< orphan*/ * sigev_hash ; 
 int /*<<< orphan*/  sigev_list_mtx ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigev_threads ; 

void
FUNC11(void)
{
	static int inited = 0;
	pthread_mutexattr_t mattr;
	int i;

	FUNC7(&mattr);
	FUNC8(&mattr, PTHREAD_MUTEX_NORMAL);
	sigev_list_mtx = FUNC9(sizeof(pthread_mutex_t));
	FUNC5(sigev_list_mtx, &mattr);
	FUNC6(&mattr);

	for (i = 0; i < HASH_QUEUES; ++i)
		FUNC0(&sigev_hash[i]);
	FUNC0(&sigev_all);
	FUNC0(&sigev_threads);
	sigev_default_thread = NULL;
	if (atfork_registered == 0) {
		FUNC1(
			__sigev_fork_prepare,
			__sigev_fork_parent,
			__sigev_fork_child);
		atfork_registered = 1;
	}
	if (!inited) {
		FUNC2(&sigev_default_attr);
		FUNC4(&sigev_default_attr,
			PTHREAD_SCOPE_SYSTEM);
		FUNC3(&sigev_default_attr,
			PTHREAD_CREATE_DETACHED);
		inited = 1;
	}
	sigev_default_thread = FUNC10(0);
}