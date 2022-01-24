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
typedef  int /*<<< orphan*/  znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
struct TYPE_6__ {int /*<<< orphan*/  lr_offset; int /*<<< orphan*/  lr_length; int /*<<< orphan*/  lr_foid; } ;
typedef  TYPE_1__ lr_truncate_t ;
struct TYPE_7__ {int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_start; scalar_t__ l_whence; int /*<<< orphan*/  l_type; } ;
typedef  TYPE_2__ flock64_t ;
typedef  int /*<<< orphan*/  fl ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FOFFMAX ; 
 int FWRITE ; 
 int /*<<< orphan*/  F_FREESP ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  kcred ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC7(void *arg1, void *arg2, boolean_t byteswap)
{
#ifdef illumos
	zfsvfs_t *zfsvfs = arg1;
	lr_truncate_t *lr = arg2;
	znode_t *zp;
	flock64_t fl;
	int error;

	if (byteswap)
		byteswap_uint64_array(lr, sizeof (*lr));

	if ((error = zfs_zget(zfsvfs, lr->lr_foid, &zp)) != 0)
		return (error);

	bzero(&fl, sizeof (fl));
	fl.l_type = F_WRLCK;
	fl.l_whence = 0;
	fl.l_start = lr->lr_offset;
	fl.l_len = lr->lr_length;

	error = VOP_SPACE(ZTOV(zp), F_FREESP, &fl, FWRITE | FOFFMAX,
	    lr->lr_offset, kcred, NULL);

	VN_RELE(ZTOV(zp));

	return (error);
#else
	FUNC2(0, "Unexpected code path, report to pjd@FreeBSD.org");
	return (EOPNOTSUPP);
#endif
}