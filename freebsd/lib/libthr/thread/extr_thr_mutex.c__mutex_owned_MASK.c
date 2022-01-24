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
struct pthread_mutex {int dummy; } ;
struct pthread {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct pthread_mutex const*) ; 
 struct pthread_mutex const* THR_MUTEX_DESTROYED ; 
 scalar_t__ FUNC1 (struct pthread*) ; 
 scalar_t__ FUNC2 (int) ; 

int
FUNC3(struct pthread *curthread, const struct pthread_mutex *mp)
{

	if (FUNC2(mp <= THR_MUTEX_DESTROYED)) {
		if (mp == THR_MUTEX_DESTROYED)
			return (EINVAL);
		return (EPERM);
	}
	if (FUNC0(mp) != FUNC1(curthread))
		return (EPERM);
	return (0);                  
}