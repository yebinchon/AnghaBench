#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  _count; } ;
struct TYPE_6__ {TYPE_1__ _kern; } ;
typedef  TYPE_2__ sem_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 

int
FUNC2(sem_t * __restrict sem, int * __restrict sval)
{

	if (FUNC1(sem) != 0)
		return (-1);

	*sval = (int)FUNC0(sem->_kern._count);
	return (0);
}