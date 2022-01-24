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
struct pthread_mutex_attr {int dummy; } ;
typedef  int /*<<< orphan*/ * pthread_mutexattr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  _pthread_mutexattr_default ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int
FUNC2(pthread_mutexattr_t *attr)
{
	int ret;
	pthread_mutexattr_t pattr;

	if ((pattr = (pthread_mutexattr_t)
	    FUNC0(sizeof(struct pthread_mutex_attr))) == NULL) {
		ret = ENOMEM;
	} else {
		FUNC1(pattr, &_pthread_mutexattr_default,
		    sizeof(struct pthread_mutex_attr));
		*attr = pattr;
		ret = 0;
	}
	return (ret);
}