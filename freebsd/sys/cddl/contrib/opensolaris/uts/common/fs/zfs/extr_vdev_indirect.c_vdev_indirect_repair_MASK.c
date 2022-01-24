#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int io_flags; int /*<<< orphan*/  io_spa; TYPE_2__* io_vsd; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_14__ {int /*<<< orphan*/  iv_splits; } ;
typedef  TYPE_2__ indirect_vsd_t ;
struct TYPE_15__ {int is_children; int /*<<< orphan*/  is_size; TYPE_4__* is_good_child; int /*<<< orphan*/  is_target_offset; TYPE_4__* is_child; } ;
typedef  TYPE_3__ indirect_split_t ;
struct TYPE_16__ {int /*<<< orphan*/ * ic_data; int /*<<< orphan*/  ic_vdev; struct TYPE_16__* ic_duplicate; } ;
typedef  TYPE_4__ indirect_child_t ;
typedef  enum zio_flag { ____Placeholder_zio_flag } zio_flag ;

/* Variables and functions */
 int ZIO_FLAG_IO_REPAIR ; 
 int ZIO_FLAG_RESILVER ; 
 int ZIO_FLAG_SCRUB ; 
 int ZIO_FLAG_SELF_HEAL ; 
 int /*<<< orphan*/  ZIO_PRIORITY_ASYNC_WRITE ; 
 int /*<<< orphan*/  ZIO_TYPE_WRITE ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(zio_t *zio)
{
	indirect_vsd_t *iv = zio->io_vsd;

	enum zio_flag flags = ZIO_FLAG_IO_REPAIR;

	if (!(zio->io_flags & (ZIO_FLAG_SCRUB | ZIO_FLAG_RESILVER)))
		flags |= ZIO_FLAG_SELF_HEAL;

	if (!FUNC2(zio->io_spa))
		return;

	for (indirect_split_t *is = FUNC0(&iv->iv_splits);
	    is != NULL; is = FUNC1(&iv->iv_splits, is)) {
		for (int c = 0; c < is->is_children; c++) {
			indirect_child_t *ic = &is->is_child[c];
			if (ic == is->is_good_child)
				continue;
			if (ic->ic_data == NULL)
				continue;
			if (ic->ic_duplicate == is->is_good_child)
				continue;

			FUNC4(FUNC5(zio, NULL,
			    ic->ic_vdev, is->is_target_offset,
			    is->is_good_child->ic_data, is->is_size,
			    ZIO_TYPE_WRITE, ZIO_PRIORITY_ASYNC_WRITE,
			    ZIO_FLAG_IO_REPAIR | ZIO_FLAG_SELF_HEAL,
			    NULL, NULL));

			FUNC3(zio, is, ic);
		}
	}
}