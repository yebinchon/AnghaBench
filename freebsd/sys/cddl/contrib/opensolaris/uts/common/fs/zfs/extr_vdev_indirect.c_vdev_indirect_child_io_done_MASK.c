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
struct TYPE_3__ {int /*<<< orphan*/ * io_abd; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  io_error; struct TYPE_3__* io_private; } ;
typedef  TYPE_1__ zio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(zio_t *zio)
{
	zio_t *pio = zio->io_private;

	FUNC1(&pio->io_lock);
	pio->io_error = FUNC3(pio->io_error, zio->io_error);
	FUNC2(&pio->io_lock);

#ifdef __FreeBSD__
	if (zio->io_abd != NULL)
#endif
	FUNC0(zio->io_abd);
}