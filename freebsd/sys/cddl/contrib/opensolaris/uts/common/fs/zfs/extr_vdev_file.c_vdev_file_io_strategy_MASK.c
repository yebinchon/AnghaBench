#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ io_type; scalar_t__ io_error; int /*<<< orphan*/  io_size; int /*<<< orphan*/  io_abd; int /*<<< orphan*/  io_offset; TYPE_2__* io_vd; } ;
typedef  TYPE_1__ zio_t ;
typedef  int /*<<< orphan*/  vnode_t ;
struct TYPE_6__ {TYPE_3__* vdev_tsd; } ;
typedef  TYPE_2__ vdev_t ;
struct TYPE_7__ {int /*<<< orphan*/ * vf_vnode; } ;
typedef  TYPE_3__ vdev_file_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ENOSPC ; 
 int /*<<< orphan*/  RLIM64_INFINITY ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 scalar_t__ ZIO_TYPE_READ ; 
 scalar_t__ ZIO_TYPE_WRITE ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kcred ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	zio_t *zio = arg;
	vdev_t *vd = zio->io_vd;
	vdev_file_t *vf;
	vnode_t *vp;
	void *addr;
	ssize_t resid;

	vf = vd->vdev_tsd;
	vp = vf->vf_vnode;

	FUNC0(zio->io_type == ZIO_TYPE_READ || zio->io_type == ZIO_TYPE_WRITE);
	if (zio->io_type == ZIO_TYPE_READ) {
		addr = FUNC1(zio->io_abd, zio->io_size);
	} else {
		addr = FUNC2(zio->io_abd, zio->io_size);
	}

	zio->io_error = FUNC6(zio->io_type == ZIO_TYPE_READ ?
	    UIO_READ : UIO_WRITE, vp, addr, zio->io_size,
	    zio->io_offset, UIO_SYSSPACE, 0, RLIM64_INFINITY, kcred, &resid);

	if (zio->io_type == ZIO_TYPE_READ) {
		FUNC4(zio->io_abd, addr, zio->io_size);
	} else {
		FUNC3(zio->io_abd, addr, zio->io_size);
	}

	if (resid != 0 && zio->io_error == 0)
		zio->io_error = ENOSPC;

	FUNC5(zio);
}