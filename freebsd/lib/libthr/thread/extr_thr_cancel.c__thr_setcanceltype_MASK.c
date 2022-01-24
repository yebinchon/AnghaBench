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
struct pthread {int cancel_async; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PTHREAD_CANCEL_ASYNCHRONOUS 129 
#define  PTHREAD_CANCEL_DEFERRED 128 
 struct pthread* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*) ; 

int
FUNC2(int type, int *oldtype)
{
	struct pthread	*curthread = FUNC0();
	int oldval;

	oldval = curthread->cancel_async;
	switch (type) {
	case PTHREAD_CANCEL_ASYNCHRONOUS:
		curthread->cancel_async = 1;
		FUNC1(curthread);
		break;
	case PTHREAD_CANCEL_DEFERRED:
		curthread->cancel_async = 0;
		break;
	default:
		return (EINVAL);
	}

	if (oldtype) {
		*oldtype = oldval ? PTHREAD_CANCEL_ASYNCHRONOUS :
		 	PTHREAD_CANCEL_DEFERRED;
	}
	return (0);
}