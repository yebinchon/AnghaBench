#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfsvfs_t ;
typedef  int /*<<< orphan*/  vnode_t ;
struct vop_deleteextattr_args {int /*<<< orphan*/  a_cred; int /*<<< orphan*/  a_vp; int /*<<< orphan*/  a_name; int /*<<< orphan*/  a_attrnamespace; struct thread* a_td; } ;
struct vattr {int dummy; } ;
struct thread {int dummy; } ;
struct nameidata {int /*<<< orphan*/ * ni_dvp; int /*<<< orphan*/  ni_cnd; int /*<<< orphan*/ * ni_vp; } ;
typedef  int /*<<< orphan*/  attrname ;
struct TYPE_2__ {int /*<<< orphan*/ * z_zfsvfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELETE ; 
 int ENOATTR ; 
 int ENOENT ; 
 int LOCKLEAF ; 
 int LOCKPARENT ; 
 int /*<<< orphan*/  LOOKUP_XATTR ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct thread*) ; 
 int NOFOLLOW ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VWRITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*,int /*<<< orphan*/ ) ; 

int
FUNC12(struct vop_deleteextattr_args *ap)
/*
vop_deleteextattr {
	IN struct vnode *a_vp;
	IN int a_attrnamespace;
	IN const char *a_name;
	IN struct ucred *a_cred;
	IN struct thread *a_td;
};
*/
{
	zfsvfs_t *zfsvfs = FUNC3(ap->a_vp)->z_zfsvfs;
	struct thread *td = ap->a_td;
	struct nameidata nd;
	char attrname[255];
	struct vattr va;
	vnode_t *xvp = NULL, *vp;
	int error, flags;

	error = FUNC6(ap->a_vp, ap->a_attrnamespace,
	    ap->a_cred, ap->a_td, VWRITE);
	if (error != 0)
		return (error);

	error = FUNC10(ap->a_attrnamespace, ap->a_name, attrname,
	    sizeof(attrname));
	if (error != 0)
		return (error);

	FUNC4(zfsvfs);

	error = FUNC11(ap->a_vp, NULL, &xvp, NULL, 0, ap->a_cred, td,
	    LOOKUP_XATTR);
	if (error != 0) {
		FUNC5(zfsvfs);
		return (error);
	}

	FUNC1(&nd, DELETE, NOFOLLOW | LOCKPARENT | LOCKLEAF,
	    UIO_SYSSPACE, attrname, xvp, td);
	error = FUNC7(&nd);
	vp = nd.ni_vp;
	if (error != 0) {
		FUNC5(zfsvfs);
		FUNC0(&nd, NDF_ONLY_PNBUF);
		if (error == ENOENT)
			error = ENOATTR;
		return (error);
	}

	error = FUNC2(nd.ni_dvp, vp, &nd.ni_cnd);
	FUNC0(&nd, NDF_ONLY_PNBUF);

	FUNC8(nd.ni_dvp);
	if (vp == nd.ni_dvp)
		FUNC9(vp);
	else
		FUNC8(vp);
	FUNC5(zfsvfs);

	return (error);
}