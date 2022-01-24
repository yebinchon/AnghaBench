#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sx; } ;
typedef  TYPE_1__ mutex_t ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(mutex_t *m)
{
	int error;

	error = -FUNC1(&m->sx);
	if (error != 0) {
		FUNC0(current, error);
		error = -EINTR;
	}
	return (error);
}