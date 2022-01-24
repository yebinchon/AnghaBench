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
typedef  int /*<<< orphan*/  pthread_once_t ;

/* Variables and functions */
 scalar_t__ __isthreaded ; 
 int FUNC0 (int /*<<< orphan*/ *,void (*) ()) ; 
 int FUNC1 (int /*<<< orphan*/ *,void (*) ()) ; 

int
FUNC2(pthread_once_t *once_control, void (*init_routine)(void))
{

	if (__isthreaded)
		return (FUNC1(once_control, init_routine));
	return (FUNC0(once_control, init_routine));
}