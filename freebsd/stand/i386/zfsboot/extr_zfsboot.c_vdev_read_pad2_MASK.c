#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vdev_t ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EIO ; 
 size_t VDEV_PAD_SIZE ; 
 int /*<<< orphan*/  ZIO_CHECKSUM_LABEL ; 
 int /*<<< orphan*/  ZIO_COMPRESS_OFF ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vdev_label_t ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vl_pad2 ; 
 char* zap_scratch ; 

__attribute__((used)) static int
FUNC10(vdev_t *vdev, char *buf, size_t size)
{
	blkptr_t bp;
	char *tmp = zap_scratch;
	off_t off = FUNC8(vdev_label_t, vl_pad2);

	if (size > VDEV_PAD_SIZE)
		size = VDEV_PAD_SIZE;

	FUNC5(&bp);
	FUNC3(&bp, VDEV_PAD_SIZE);
	FUNC4(&bp, VDEV_PAD_SIZE);
	FUNC1(&bp, ZIO_CHECKSUM_LABEL);
	FUNC2(&bp, ZIO_COMPRESS_OFF);
	FUNC6(FUNC0(&bp), off);
	if (FUNC9(vdev, &bp, tmp, off, 0))
		return (EIO);
	FUNC7(buf, tmp, size);
	return (0);
}