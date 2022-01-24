#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ z_id; int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_unlinked; TYPE_2__* z_zfsvfs; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_11__ {scalar_t__ z_root; int /*<<< orphan*/  z_os; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  parent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC9 (TYPE_2__*,scalar_t__,TYPE_1__**) ; 

__attribute__((used)) static int
FUNC10(znode_t *szp, znode_t *sdzp, znode_t *tdzp)
{
	zfsvfs_t	*zfsvfs;
	znode_t		*zp, *zp1;
	uint64_t	parent;
	int		error;

	zfsvfs = tdzp->z_zfsvfs;
	if (tdzp == szp)
		return (FUNC2(EINVAL));
	if (tdzp == sdzp)
		return (0);
	if (tdzp->z_id == zfsvfs->z_root)
		return (0);
	zp = tdzp;
	for (;;) {
		FUNC0(!zp->z_unlinked);
		if ((error = FUNC8(zp->z_sa_hdl,
		    FUNC1(zfsvfs), &parent, sizeof (parent))) != 0)
			break;

		if (parent == szp->z_id) {
			error = FUNC2(EINVAL);
			break;
		}
		if (parent == zfsvfs->z_root)
			break;
		if (parent == sdzp->z_id)
			break;

		error = FUNC9(zfsvfs, parent, &zp1);
		if (error != 0)
			break;

		if (zp != tdzp)
			FUNC3(FUNC4(zp),
			    FUNC6(FUNC5(zfsvfs->z_os)));
		zp = zp1;
	}

	if (error == ENOTDIR)
		FUNC7("checkpath: .. not a directory\n");
	if (zp != tdzp)
		FUNC3(FUNC4(zp),
		    FUNC6(FUNC5(zfsvfs->z_os)));
	return (error);
}