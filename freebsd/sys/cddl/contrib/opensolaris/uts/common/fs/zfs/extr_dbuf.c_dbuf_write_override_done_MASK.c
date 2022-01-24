#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * io_abd; int /*<<< orphan*/  io_txg; int /*<<< orphan*/  io_spa; int /*<<< orphan*/  io_bp; TYPE_5__* io_private; } ;
typedef  TYPE_3__ zio_t ;
struct TYPE_13__ {int /*<<< orphan*/  db_mtx; } ;
typedef  TYPE_4__ dmu_buf_impl_t ;
struct TYPE_10__ {int /*<<< orphan*/  dr_data; int /*<<< orphan*/  dr_overridden_by; } ;
struct TYPE_11__ {TYPE_1__ dl; } ;
struct TYPE_14__ {TYPE_2__ dt; TYPE_4__* dr_dbuf; } ;
typedef  TYPE_5__ dbuf_dirty_record_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(zio_t *zio)
{
	dbuf_dirty_record_t *dr = zio->io_private;
	dmu_buf_impl_t *db = dr->dr_dbuf;
	blkptr_t *obp = &dr->dt.dl.dr_overridden_by;

	FUNC6(&db->db_mtx);
	if (!FUNC0(zio->io_bp, obp)) {
		if (!FUNC1(obp))
			FUNC5(FUNC8(zio->io_spa), zio->io_txg, obp);
		FUNC3(dr->dt.dl.dr_data, db);
	}
	FUNC7(&db->db_mtx);
	FUNC4(zio, NULL, db);

	if (zio->io_abd != NULL)
		FUNC2(zio->io_abd);
}