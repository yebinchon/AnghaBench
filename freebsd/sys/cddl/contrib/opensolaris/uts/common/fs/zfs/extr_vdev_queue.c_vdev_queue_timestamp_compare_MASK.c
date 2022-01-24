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
struct TYPE_4__ {int /*<<< orphan*/  io_timestamp; } ;
typedef  TYPE_1__ zio_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__ const*,TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (int) ; 

int
FUNC3(const void *x1, const void *x2)
{
	const zio_t *z1 = (const zio_t *)x1;
	const zio_t *z2 = (const zio_t *)x2;

	int cmp = FUNC0(z1->io_timestamp, z2->io_timestamp);

	if (FUNC2(cmp))
		return (cmp);

	return (FUNC1(z1, z2));
}