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
struct pthread_mutex {int m_yieldloops; } ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct pthread_mutex**) ; 

int
FUNC1(pthread_mutex_t *mutex, int count)
{
	struct pthread_mutex *m;
	int ret;

	ret = FUNC0(mutex, &m);
	if (ret == 0)
		m->m_yieldloops = count;
	return (0);
}