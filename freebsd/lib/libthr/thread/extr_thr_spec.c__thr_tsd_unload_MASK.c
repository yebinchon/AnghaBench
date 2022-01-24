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
struct dl_phdr_info {int dummy; } ;
struct TYPE_2__ {void (* destructor ) (void*) ;int /*<<< orphan*/  allocated; } ;

/* Variables and functions */
 int PTHREAD_KEYS_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct dl_phdr_info*,void (*) (void*)) ; 
 struct pthread* FUNC3 () ; 
 int /*<<< orphan*/  _keytable_lock ; 
 TYPE_1__* _thread_keytable ; 

void
FUNC4(struct dl_phdr_info *phdr_info)
{
	struct pthread *curthread;
	void (*destructor)(void *);
	int key;

	curthread = FUNC3();
	FUNC0(curthread, &_keytable_lock);
	for (key = 0; key < PTHREAD_KEYS_MAX; key++) {
		if (!_thread_keytable[key].allocated)
			continue;
		destructor = _thread_keytable[key].destructor;
		if (destructor == NULL)
			continue;
		if (FUNC2(phdr_info, destructor))
			_thread_keytable[key].destructor = NULL;
	}
	FUNC1(curthread, &_keytable_lock);
}