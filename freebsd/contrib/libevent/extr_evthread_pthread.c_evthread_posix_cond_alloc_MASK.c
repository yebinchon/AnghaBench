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
typedef  void pthread_cond_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC3(unsigned condflags)
{
	pthread_cond_t *cond = FUNC1(sizeof(pthread_cond_t));
	if (!cond)
		return NULL;
	if (FUNC2(cond, NULL)) {
		FUNC0(cond);
		return NULL;
	}
	return cond;
}