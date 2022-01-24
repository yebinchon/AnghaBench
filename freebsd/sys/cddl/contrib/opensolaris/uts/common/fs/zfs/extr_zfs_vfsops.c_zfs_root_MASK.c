#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  znode_t ;
struct TYPE_7__ {int /*<<< orphan*/  z_root; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  int /*<<< orphan*/  vnode_t ;
struct TYPE_8__ {TYPE_1__* vfs_data; } ;
typedef  TYPE_2__ vfs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC6(vfs_t *vfsp, int flags, vnode_t **vpp)
{
	zfsvfs_t *zfsvfs = vfsp->vfs_data;
	znode_t *rootzp;
	int error;

	FUNC1(zfsvfs);

	error = FUNC5(zfsvfs, zfsvfs->z_root, &rootzp);
	if (error == 0)
		*vpp = FUNC3(rootzp);

	FUNC2(zfsvfs);

	if (error == 0) {
		error = FUNC4(*vpp, flags);
		if (error != 0) {
			FUNC0(*vpp);
			*vpp = NULL;
		}
	}
	return (error);
}