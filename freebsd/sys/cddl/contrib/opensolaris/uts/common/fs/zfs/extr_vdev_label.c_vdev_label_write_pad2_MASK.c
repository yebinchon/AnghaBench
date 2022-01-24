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
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_7__ {TYPE_1__* vdev_ops; int /*<<< orphan*/ * vdev_spa; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  abd_t ;
struct TYPE_6__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  RW_WRITER ; 
 scalar_t__ SCL_ALL ; 
 size_t VDEV_PAD_SIZE ; 
 int ZIO_FLAG_CANFAIL ; 
 int ZIO_FLAG_CONFIG_WRITER ; 
 int ZIO_FLAG_TRYHARD ; 
 int /*<<< orphan*/ * FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  vdev_label_t ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  vl_pad2 ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11(vdev_t *vd, const char *buf, size_t size)
{
	spa_t *spa = vd->vdev_spa;
	zio_t *zio;
	abd_t *pad2;
	int flags = ZIO_FLAG_CONFIG_WRITER | ZIO_FLAG_CANFAIL;
	int error;

	if (size > VDEV_PAD_SIZE)
		return (EINVAL);

	if (!vd->vdev_ops->vdev_op_leaf)
		return (ENODEV);
	if (FUNC7(vd))
		return (ENXIO);

	FUNC0(FUNC6(spa, SCL_ALL, RW_WRITER) == SCL_ALL);

	pad2 = FUNC1(VDEV_PAD_SIZE, B_TRUE);
	FUNC4(pad2, VDEV_PAD_SIZE);
	FUNC2(pad2, buf, size);

retry:
	zio = FUNC9(spa, NULL, NULL, flags);
	FUNC8(zio, vd, 0, pad2,
	    FUNC5(vdev_label_t, vl_pad2),
	    VDEV_PAD_SIZE, NULL, NULL, flags);
	error = FUNC10(zio);
	if (error != 0 && !(flags & ZIO_FLAG_TRYHARD)) {
		flags |= ZIO_FLAG_TRYHARD;
		goto retry;
	}

	FUNC3(pad2);
	return (error);
}