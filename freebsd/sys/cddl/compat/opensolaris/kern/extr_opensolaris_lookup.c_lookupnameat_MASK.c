#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
struct nameidata {int /*<<< orphan*/ * ni_vp; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef  enum symfollow { ____Placeholder_symfollow } symfollow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LK_RETRY ; 
 int LOCKLEAF ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDF_ONLY_PNBUF ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*,int /*<<< orphan*/ ,int,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC5 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(char *dirname, enum uio_seg seg, enum symfollow follow,
    vnode_t **dirvpp, vnode_t **compvpp, vnode_t *startvp)
{
	struct nameidata nd;
	int error, ltype;

	FUNC0(dirvpp == NULL);

	FUNC7(startvp);
	ltype = FUNC3(startvp);
	FUNC4(startvp, 0);
	FUNC2(&nd, LOOKUP, LOCKLEAF | follow, seg, dirname,
	    startvp, curthread);
	error = FUNC5(&nd);
	*compvpp = nd.ni_vp;
	FUNC1(&nd, NDF_ONLY_PNBUF);
	FUNC6(startvp, ltype | LK_RETRY);
	return (error);
}