#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ io_type; int /*<<< orphan*/  io_size; int /*<<< orphan*/  io_abd; void* io_error; } ;
typedef  TYPE_2__ zio_t ;
struct TYPE_11__ {TYPE_2__* vb_io; } ;
typedef  TYPE_3__ vdev_buf_t ;
struct TYPE_9__ {int /*<<< orphan*/  b_addr; } ;
struct TYPE_12__ {scalar_t__ b_resid; TYPE_1__ b_un; } ;
typedef  TYPE_4__ buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZIO_TYPE_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(buf_t *bp)
{
	vdev_buf_t *vb = (vdev_buf_t *)bp;
	zio_t *zio = vb->vb_io;

	/*
	 * The rest of the zio stack only deals with EIO, ECKSUM, and ENXIO.
	 * Rather than teach the rest of the stack about other error
	 * possibilities (EFAULT, etc), we normalize the error value here.
	 */
	zio->io_error = (FUNC3(bp) != 0 ? FUNC0(EIO) : 0);

	if (zio->io_error == 0 && bp->b_resid != 0)
		zio->io_error = FUNC0(EIO);

	if (zio->io_type == ZIO_TYPE_READ) {
		FUNC2(zio->io_abd, bp->b_un.b_addr, zio->io_size);
	} else {
		FUNC1(zio->io_abd, bp->b_un.b_addr, zio->io_size);
	}

	FUNC4(vb, sizeof (vdev_buf_t));

	FUNC5(zio);
}