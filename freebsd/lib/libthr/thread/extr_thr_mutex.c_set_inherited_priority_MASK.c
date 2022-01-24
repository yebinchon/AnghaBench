#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int* m_ceilings; } ;
struct pthread_mutex {TYPE_1__ m_lock; } ;
struct pthread {int /*<<< orphan*/ * mq; } ;

/* Variables and functions */
 struct pthread_mutex* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct pthread_mutex*) ; 
 int /*<<< orphan*/  mutex_queue ; 

__attribute__((used)) static void
FUNC2(struct pthread *curthread, struct pthread_mutex *m)
{
	struct pthread_mutex *m2;

	m2 = FUNC0(&curthread->mq[FUNC1(m)], mutex_queue);
	if (m2 != NULL)
		m->m_lock.m_ceilings[1] = m2->m_lock.m_ceilings[0];
	else
		m->m_lock.m_ceilings[1] = -1;
}