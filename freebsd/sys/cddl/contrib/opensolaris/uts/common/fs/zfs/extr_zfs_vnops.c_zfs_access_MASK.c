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
struct TYPE_6__ {int /*<<< orphan*/ * z_zfsvfs; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zfsvfs_t ;
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  caller_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int V_ACE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(vnode_t *vp, int mode, int flag, cred_t *cr,
    caller_context_t *ct)
{
	znode_t *zp = FUNC0(vp);
	zfsvfs_t *zfsvfs = zp->z_zfsvfs;
	int error;

	FUNC1(zfsvfs);
	FUNC3(zp);

	if (flag & V_ACE_MASK)
		error = FUNC4(zp, mode, flag, B_FALSE, cr);
	else
		error = FUNC5(zp, mode, flag, cr);

	FUNC2(zfsvfs);
	return (error);
}