#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  z_sa_hdl; scalar_t__ z_is_sa; int /*<<< orphan*/ * z_zfsvfs; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  uio_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  caller_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(vnode_t *vp, uio_t *uio, cred_t *cr, caller_context_t *ct)
{
	znode_t		*zp = FUNC1(vp);
	zfsvfs_t	*zfsvfs = zp->z_zfsvfs;
	int		error;

	FUNC3(zfsvfs);
	FUNC5(zp);

	if (zp->z_is_sa)
		error = FUNC6(zp->z_sa_hdl,
		    FUNC0(zfsvfs), uio);
	else
		error = FUNC7(zp, uio);

	FUNC2(zfsvfs, zp);

	FUNC4(zfsvfs);
	return (error);
}