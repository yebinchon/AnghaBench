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
struct TYPE_2__ {scalar_t__ allocated; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int PTHREAD_KEYS_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,int /*<<< orphan*/ *) ; 
 struct pthread* FUNC2 () ; 
 int /*<<< orphan*/  _keytable_lock ; 
 TYPE_1__* _thread_keytable ; 

int
FUNC3(pthread_key_t userkey)
{
	struct pthread *curthread;
	int key, ret;

	key = userkey - 1;
	if ((unsigned int)key >= PTHREAD_KEYS_MAX)
		return (EINVAL);
	curthread = FUNC2();
	FUNC0(curthread, &_keytable_lock);
	if (_thread_keytable[key].allocated) {
		_thread_keytable[key].allocated = 0;
		ret = 0;
	} else {
		ret = EINVAL;
	}
	FUNC1(curthread, &_keytable_lock);
	return (ret);
}