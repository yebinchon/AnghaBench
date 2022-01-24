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
struct vop_setextattr_args {int /*<<< orphan*/  a_cred; int /*<<< orphan*/  a_uio; int /*<<< orphan*/  a_vp; int /*<<< orphan*/  a_name; int /*<<< orphan*/  a_attrnamespace; struct thread* a_td; } ;
struct vattr {scalar_t__ va_size; } ;
struct thread {int dummy; } ;
struct nameidata {int /*<<< orphan*/ * ni_vp; } ;
typedef  int /*<<< orphan*/  attrname ;
struct TYPE_2__ {int /*<<< orphan*/ * z_zfsvfs; } ;

/* Variables and functions */
 int CREATE_XATTR_DIR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IO_UNIT ; 
 int /*<<< orphan*/  LOOKUP ; 
 int LOOKUP_XATTR ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct thread*) ; 
 int /*<<< orphan*/  NOFOLLOW ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  FUNC3 (struct vattr*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct vattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VWRITE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC12 (struct nameidata*,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*,int) ; 

__attribute__((used)) static int
FUNC15(struct vop_setextattr_args *ap)
/*
vop_setextattr {
	IN struct vnode *a_vp;
	IN int a_attrnamespace;
	IN const char *a_name;
	INOUT struct uio *a_uio;
	IN struct ucred *a_cred;
	IN struct thread *a_td;
};
*/
{
	zfsvfs_t *zfsvfs = FUNC7(ap->a_vp)->z_zfsvfs;
	struct thread *td = ap->a_td;
	struct nameidata nd;
	char attrname[255];
	struct vattr va;
	vnode_t *xvp = NULL, *vp;
	int error, flags;

	error = FUNC10(ap->a_vp, ap->a_attrnamespace,
	    ap->a_cred, ap->a_td, VWRITE);
	if (error != 0)
		return (error);

	error = FUNC13(ap->a_attrnamespace, ap->a_name, attrname,
	    sizeof(attrname));
	if (error != 0)
		return (error);

	FUNC8(zfsvfs);

	error = FUNC14(ap->a_vp, NULL, &xvp, NULL, 0, ap->a_cred, td,
	    LOOKUP_XATTR | CREATE_XATTR_DIR);
	if (error != 0) {
		FUNC9(zfsvfs);
		return (error);
	}

	flags = FUNC0(O_WRONLY | O_CREAT);
	FUNC2(&nd, LOOKUP, NOFOLLOW, UIO_SYSSPACE, attrname,
	    xvp, td);
	error = FUNC12(&nd, &flags, 0600, 0, ap->a_cred, NULL);
	vp = nd.ni_vp;
	FUNC1(&nd, NDF_ONLY_PNBUF);
	if (error != 0) {
		FUNC9(zfsvfs);
		return (error);
	}

	FUNC3(&va);
	va.va_size = 0;
	error = FUNC4(vp, &va, ap->a_cred);
	if (error == 0)
		FUNC6(vp, ap->a_uio, IO_UNIT, ap->a_cred);

	FUNC5(vp, 0);
	FUNC11(vp, flags, ap->a_cred, td);
	FUNC9(zfsvfs);

	return (error);
}