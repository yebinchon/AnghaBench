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
struct pthread_cleanup {void (* routine ) (void*) ;int onheap; struct pthread_cleanup* prev; void* routine_arg; } ;
struct pthread {int unwind_disabled; struct pthread_cleanup* cleanup; } ;

/* Variables and functions */
 struct pthread* FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 

void
FUNC2(void (*routine)(void *), void *arg)
{
	struct pthread	*curthread = FUNC0();
	struct pthread_cleanup *newbuf;
#ifdef _PTHREAD_FORCED_UNWIND
	curthread->unwind_disabled = 1;
#endif
	if ((newbuf = (struct pthread_cleanup *)
	    FUNC1(sizeof(struct pthread_cleanup))) != NULL) {
		newbuf->routine = routine;
		newbuf->routine_arg = arg;
		newbuf->onheap = 1;
		newbuf->prev = curthread->cleanup;
		curthread->cleanup = newbuf;
	}
}