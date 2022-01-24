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
struct pthread {int error; } ;

/* Variables and functions */
 struct pthread* FUNC0 () ; 
 struct pthread* _thr_initial ; 
 int errno ; 

int *
FUNC1(void)
{
	struct pthread *curthread;

	if (_thr_initial != NULL) {
		curthread = FUNC0();
		if (curthread != NULL && curthread != _thr_initial)
			return (&curthread->error);
	}
	return (&errno);
}