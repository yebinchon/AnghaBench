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
struct pthread {int dummy; } ;

/* Variables and functions */
 struct pthread* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pthread*,struct pthread_mutex*,int /*<<< orphan*/ ) ; 

int
FUNC2(struct pthread_mutex *m, int count)
{
	struct pthread *curthread;

	curthread = FUNC0();
	FUNC1(curthread, m, 0);
	m->m_count = count;
	return (0);
}