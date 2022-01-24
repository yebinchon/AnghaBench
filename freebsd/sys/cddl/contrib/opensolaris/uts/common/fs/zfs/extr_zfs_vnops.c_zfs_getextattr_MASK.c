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
struct vop_getextattr_args {size_t* a_size; int /*<<< orphan*/  a_cred; int /*<<< orphan*/ * a_uio; int /*<<< orphan*/  a_vp; int /*<<< orphan*/  a_name; int /*<<< orphan*/  a_attrnamespace; struct thread* a_td; } ;
struct vattr {scalar_t__ va_size; } ;
struct thread {int dummy; } ;
struct nameidata {int /*<<< orphan*/ * ni_vp; } ;
typedef  int /*<<< orphan*/  attrname ;
struct TYPE_2__ {int /*<<< orphan*/ * z_zfsvfs; } ;

/* Variables and functions */
 int ENOATTR ; 
 int ENOENT ; 
 int FREAD ; 
 int /*<<< orphan*/  IO_UNIT ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  LOOKUP_XATTR ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct thread*) ; 
 int /*<<< orphan*/  NOFOLLOW ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int FUNC2 (int /*<<< orphan*/ *,struct vattr*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VREAD ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC10 (struct nameidata*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct vop_getextattr_args *ap)
/*
vop_getextattr {
	IN struct vnode *a_vp;
	IN int a_attrnamespace;
	IN const char *a_name;
	INOUT struct uio *a_uio;
	OUT size_t *a_size;
	IN struct ucred *a_cred;
	IN struct thread *a_td;
};
*/
{
	zfsvfs_t *zfsvfs = FUNC5(ap->a_vp)->z_zfsvfs;
	struct thread *td = ap->a_td;
	struct nameidata nd;
	char attrname[255];
	struct vattr va;
	vnode_t *xvp = NULL, *vp;
	int error, flags;

	error = FUNC8(ap->a_vp, ap->a_attrnamespace,
	    ap->a_cred, ap->a_td, VREAD);
	if (error != 0)
		return (error);

	error = FUNC11(ap->a_attrnamespace, ap->a_name, attrname,
	    sizeof(attrname));
	if (error != 0)
		return (error);

	FUNC6(zfsvfs);

	error = FUNC12(ap->a_vp, NULL, &xvp, NULL, 0, ap->a_cred, td,
	    LOOKUP_XATTR);
	if (error != 0) {
		FUNC7(zfsvfs);
		return (error);
	}

	flags = FREAD;
	FUNC1(&nd, LOOKUP, NOFOLLOW, UIO_SYSSPACE, attrname,
	    xvp, td);
	error = FUNC10(&nd, &flags, 0, 0, ap->a_cred, NULL);
	vp = nd.ni_vp;
	FUNC0(&nd, NDF_ONLY_PNBUF);
	if (error != 0) {
		FUNC7(zfsvfs);
		if (error == ENOENT)
			error = ENOATTR;
		return (error);
	}

	if (ap->a_size != NULL) {
		error = FUNC2(vp, &va, ap->a_cred);
		if (error == 0)
			*ap->a_size = (size_t)va.va_size;
	} else if (ap->a_uio != NULL)
		error = FUNC3(vp, ap->a_uio, IO_UNIT, ap->a_cred);

	FUNC4(vp, 0);
	FUNC9(vp, flags, ap->a_cred, td);
	FUNC7(zfsvfs);

	return (error);
}