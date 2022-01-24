#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pthread_rwlockattr {int dummy; } ;
typedef  TYPE_1__* pthread_rwlockattr_t ;
struct TYPE_4__ {int /*<<< orphan*/  pshared; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PTHREAD_PROCESS_PRIVATE ; 
 TYPE_1__* FUNC0 (int) ; 

int
FUNC1(pthread_rwlockattr_t *rwlockattr)
{
	pthread_rwlockattr_t prwlockattr;

	if (rwlockattr == NULL)
		return (EINVAL);

	prwlockattr = FUNC0(sizeof(struct pthread_rwlockattr));
	if (prwlockattr == NULL)
		return (ENOMEM);

	prwlockattr->pshared = PTHREAD_PROCESS_PRIVATE;
	*rwlockattr = prwlockattr;
	return (0);
}