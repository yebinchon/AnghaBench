#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * z_zfsvfs; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
typedef  int /*<<< orphan*/  vsecattr_t ;
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  caller_context_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int ATTR_NOACLCHECK ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(vnode_t *vp, vsecattr_t *vsecp, int flag, cred_t *cr,
    caller_context_t *ct)
{
	znode_t *zp = FUNC0(vp);
	zfsvfs_t *zfsvfs = zp->z_zfsvfs;
	int error;
	boolean_t skipaclchk = (flag & ATTR_NOACLCHECK) ? B_TRUE : B_FALSE;

	FUNC1(zfsvfs);
	FUNC3(zp);
	error = FUNC4(zp, vsecp, skipaclchk, cr);
	FUNC2(zfsvfs);

	return (error);
}