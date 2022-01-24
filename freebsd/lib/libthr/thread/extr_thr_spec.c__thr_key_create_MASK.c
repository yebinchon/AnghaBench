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
struct pthread {int dummy; } ;
typedef  int pthread_key_t ;
struct TYPE_2__ {int allocated; void (* destructor ) (void*) ;int /*<<< orphan*/  seqno; } ;

/* Variables and functions */
 int EAGAIN ; 
 int PTHREAD_KEYS_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,int /*<<< orphan*/ *) ; 
 struct pthread* FUNC2 () ; 
 int /*<<< orphan*/  _keytable_lock ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* _thread_keytable ; 

int
FUNC4(pthread_key_t *key, void (*destructor)(void *))
{
	struct pthread *curthread;
	int i;

	FUNC3();

	curthread = FUNC2();

	FUNC0(curthread, &_keytable_lock);
	for (i = 0; i < PTHREAD_KEYS_MAX; i++) {

		if (_thread_keytable[i].allocated == 0) {
			_thread_keytable[i].allocated = 1;
			_thread_keytable[i].destructor = destructor;
			_thread_keytable[i].seqno++;

			FUNC1(curthread, &_keytable_lock);
			*key = i + 1;
			return (0);
		}

	}
	FUNC1(curthread, &_keytable_lock);
	return (EAGAIN);
}