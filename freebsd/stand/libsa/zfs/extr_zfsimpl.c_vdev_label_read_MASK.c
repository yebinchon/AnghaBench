#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  v_psize; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_13__ {int /*<<< orphan*/  blk_cksum; } ;
typedef  TYPE_2__ blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZIO_CHECKSUM_LABEL ; 
 int /*<<< orphan*/  ZIO_COMPRESS_OFF ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,TYPE_2__*,void*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC10(vdev_t *vd, int l, void *buf, uint64_t offset,
    size_t size)
{
	blkptr_t bp;
	off_t off;

	off = FUNC8(vd->v_psize, l, offset);

	FUNC5(&bp);
	FUNC3(&bp, size);
	FUNC4(&bp, size);
	FUNC1(&bp, ZIO_CHECKSUM_LABEL);
	FUNC2(&bp, ZIO_COMPRESS_OFF);
	FUNC6(FUNC0(&bp), off);
	FUNC7(&bp.blk_cksum, off, 0, 0, 0);

	return (FUNC9(vd, &bp, buf, off, size));
}