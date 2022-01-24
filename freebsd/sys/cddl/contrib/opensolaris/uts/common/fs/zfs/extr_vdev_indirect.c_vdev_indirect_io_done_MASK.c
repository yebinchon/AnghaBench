#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* io_vsd; } ;
typedef  TYPE_1__ zio_t ;
typedef  int /*<<< orphan*/  zio_bad_cksum_t ;
struct TYPE_10__ {int /*<<< orphan*/  iv_split_block; scalar_t__ iv_reconstruct; } ;
typedef  TYPE_2__ indirect_vsd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(zio_t *zio)
{
	indirect_vsd_t *iv = zio->io_vsd;

	if (iv->iv_reconstruct) {
		/*
		 * We have read all copies of the data (e.g. from mirrors),
		 * either because this was a scrub/resilver, or because the
		 * one-copy read didn't checksum correctly.
		 */
		FUNC1(zio);
		return;
	}

	if (!iv->iv_split_block) {
		/*
		 * This was not a split block, so we passed the BP down,
		 * and the checksum was handled by the (one) child zio.
		 */
		return;
	}

	zio_bad_cksum_t zbc;
	int ret = FUNC2(zio, &zbc);
	if (ret == 0) {
		FUNC3(zio);
		return;
	}

	/*
	 * The checksum didn't match.  Read all copies of all splits, and
	 * then we will try to reconstruct.  The next time
	 * vdev_indirect_io_done() is called, iv_reconstruct will be set.
	 */
	FUNC0(zio);

	FUNC4(zio);
}