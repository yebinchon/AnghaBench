#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  z_uid; int /*<<< orphan*/  z_zfsvfs; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int VEXEC ; 
 int VWRITE ; 
 int /*<<< orphan*/  ZFS_OWNER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(znode_t *zp, znode_t *dzp,
    mode_t available_perms, cred_t *cr)
{
	int error;
	uid_t downer;

	downer = FUNC2(dzp->z_zfsvfs, dzp->z_uid, cr, ZFS_OWNER);

	error = FUNC1(cr, FUNC0(dzp),
	    downer, available_perms, VWRITE|VEXEC);

	if (error == 0)
		error = FUNC3(dzp, zp, cr);

	return (error);
}