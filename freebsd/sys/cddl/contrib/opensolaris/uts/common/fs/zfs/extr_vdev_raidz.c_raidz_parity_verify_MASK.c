#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int zp_checksum; } ;
struct TYPE_11__ {TYPE_1__ io_prop; int /*<<< orphan*/ * io_bp; } ;
typedef  TYPE_2__ zio_t ;
struct TYPE_12__ {int rm_firstdatacol; TYPE_4__* rm_col; } ;
typedef  TYPE_3__ raidz_map_t ;
struct TYPE_13__ {scalar_t__ rc_error; int /*<<< orphan*/  rc_size; int /*<<< orphan*/  rc_abd; int /*<<< orphan*/  rc_tried; } ;
typedef  TYPE_4__ raidz_col_t ;
typedef  enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ECKSUM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int VDEV_RAIDZ_MAXPARITY ; 
 int ZIO_CHECKSUM_GANG_HEADER ; 
 int ZIO_CHECKSUM_NOPARITY ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_4__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(zio_t *zio, raidz_map_t *rm)
{
	void *orig[VDEV_RAIDZ_MAXPARITY];
	int c, ret = 0;
	raidz_col_t *rc;

	blkptr_t *bp = zio->io_bp;
	enum zio_checksum checksum = (bp == NULL ? zio->io_prop.zp_checksum :
	    (FUNC1(bp) ? ZIO_CHECKSUM_GANG_HEADER : FUNC0(bp)));

	if (checksum == ZIO_CHECKSUM_NOPARITY)
		return (ret);

	for (c = 0; c < rm->rm_firstdatacol; c++) {
		rc = &rm->rm_col[c];
		if (!rc->rc_tried || rc->rc_error != 0)
			continue;
		orig[c] = FUNC7(rc->rc_size);
		FUNC4(orig[c], rc->rc_abd, rc->rc_size);
	}

	FUNC6(rm);

	for (c = 0; c < rm->rm_firstdatacol; c++) {
		rc = &rm->rm_col[c];
		if (!rc->rc_tried || rc->rc_error != 0)
			continue;
		if (FUNC3(rc->rc_abd, orig[c], rc->rc_size) != 0) {
			FUNC5(zio, rc, orig[c]);
			rc->rc_error = FUNC2(ECKSUM);
			ret++;
		}
		FUNC8(orig[c], rc->rc_size);
	}

	return (ret);
}