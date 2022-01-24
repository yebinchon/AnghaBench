#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ zt_bufsize; struct TYPE_6__* zt_next; int /*<<< orphan*/  zt_orig_size; int /*<<< orphan*/  zt_orig_abd; int /*<<< orphan*/  (* zt_transform ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ zio_transform_t ;
struct TYPE_7__ {TYPE_1__* io_transform_stack; int /*<<< orphan*/  io_size; int /*<<< orphan*/  io_abd; } ;
typedef  TYPE_2__ zio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(zio_t *zio)
{
	zio_transform_t *zt;

	while ((zt = zio->io_transform_stack) != NULL) {
		if (zt->zt_transform != NULL)
			zt->zt_transform(zio,
			    zt->zt_orig_abd, zt->zt_orig_size);

		if (zt->zt_bufsize != 0)
			FUNC0(zio->io_abd);

		zio->io_abd = zt->zt_orig_abd;
		zio->io_size = zt->zt_orig_size;
		zio->io_transform_stack = zt->zt_next;

		FUNC1(zt, sizeof (zio_transform_t));
	}
}