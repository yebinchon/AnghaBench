#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  zl_spa; int /*<<< orphan*/  zl_os; TYPE_1__* zl_header; } ;
typedef  TYPE_2__ zilog_t ;
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
struct TYPE_13__ {int lr_offset; int /*<<< orphan*/  lr_foid; int /*<<< orphan*/  lr_length; int /*<<< orphan*/  lr_blkptr; } ;
typedef  TYPE_3__ lr_write_t ;
typedef  enum zio_flag { ____Placeholder_zio_flag } zio_flag ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  arc_flags_t ;
struct TYPE_14__ {int /*<<< orphan*/  b_data; } ;
typedef  TYPE_4__ arc_buf_t ;
struct TYPE_11__ {scalar_t__ zh_claim_txg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARC_FLAG_WAIT ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ZB_ZIL_LEVEL ; 
 int ZIO_FLAG_CANFAIL ; 
 int ZIO_FLAG_SCRUB ; 
 int ZIO_FLAG_SPECULATIVE ; 
 int /*<<< orphan*/  ZIO_PRIORITY_SYNC_READ ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  arc_getbuf_func ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_4__**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(zilog_t *zilog, const lr_write_t *lr, void *wbuf)
{
	enum zio_flag zio_flags = ZIO_FLAG_CANFAIL;
	const blkptr_t *bp = &lr->lr_blkptr;
	arc_flags_t aflags = ARC_FLAG_WAIT;
	arc_buf_t *abuf = NULL;
	zbookmark_phys_t zb;
	int error;

	if (FUNC1(bp)) {
		if (wbuf != NULL)
			FUNC8(wbuf, FUNC2(FUNC0(bp), lr->lr_length));
		return (0);
	}

	if (zilog->zl_header->zh_claim_txg == 0)
		zio_flags |= ZIO_FLAG_SPECULATIVE | ZIO_FLAG_SCRUB;

	FUNC3(&zb, FUNC9(zilog->zl_os), lr->lr_foid,
	    ZB_ZIL_LEVEL, lr->lr_offset / FUNC0(bp));

	error = FUNC6(NULL, zilog->zl_spa, bp, arc_getbuf_func, &abuf,
	    ZIO_PRIORITY_SYNC_READ, zio_flags, &aflags, &zb);

	if (error == 0) {
		if (wbuf != NULL)
			FUNC7(abuf->b_data, wbuf, FUNC5(abuf));
		FUNC4(abuf, &abuf);
	}

	return (error);
}