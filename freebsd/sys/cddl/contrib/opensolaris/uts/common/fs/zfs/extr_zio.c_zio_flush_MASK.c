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
struct TYPE_4__ {int /*<<< orphan*/  io_spa; } ;
typedef  TYPE_1__ zio_t ;
typedef  int /*<<< orphan*/  vdev_t ;

/* Variables and functions */
 int /*<<< orphan*/  DKIOCFLUSHWRITECACHE ; 
 int ZIO_FLAG_CANFAIL ; 
 int ZIO_FLAG_DONT_PROPAGATE ; 
 int ZIO_FLAG_DONT_RETRY ; 
 int /*<<< orphan*/  ZIO_PRIORITY_NOW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(zio_t *zio, vdev_t *vd)
{
	FUNC1(FUNC0(zio, zio->io_spa, vd, DKIOCFLUSHWRITECACHE, 0, 0,
	    NULL, NULL, ZIO_PRIORITY_NOW,
	    ZIO_FLAG_CANFAIL | ZIO_FLAG_DONT_PROPAGATE | ZIO_FLAG_DONT_RETRY));
}