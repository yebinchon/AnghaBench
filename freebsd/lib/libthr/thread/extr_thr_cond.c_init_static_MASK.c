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
struct pthread {int dummy; } ;
typedef  int /*<<< orphan*/ * pthread_cond_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _cond_static_lock ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct pthread *thread, pthread_cond_t *cond)
{
	int ret;

	FUNC0(thread, &_cond_static_lock);

	if (*cond == NULL)
		ret = FUNC2(cond, NULL);
	else
		ret = 0;

	FUNC1(thread, &_cond_static_lock);

	return (ret);
}