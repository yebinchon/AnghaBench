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
struct pthread_mutex {int m_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pthread_mutex*,int,int*) ; 

int
FUNC1(struct pthread_mutex *m, int *count, int *defer)
{

	/*
	 * Clear the count in case this is a recursive mutex.
	 */
	*count = m->m_count;
	m->m_count = 0;
	(void)FUNC0(m, true, defer);
        return (0);
}