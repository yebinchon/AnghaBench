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
struct TYPE_3__ {int io_stage; scalar_t__ io_error; } ;
typedef  TYPE_1__ zio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ZIO_STAGE_VDEV_IO_START ; 

void
FUNC1(zio_t *zio)
{
	FUNC0(zio->io_stage == ZIO_STAGE_VDEV_IO_START);
	FUNC0(zio->io_error == 0);

	zio->io_stage >>= 1;
}