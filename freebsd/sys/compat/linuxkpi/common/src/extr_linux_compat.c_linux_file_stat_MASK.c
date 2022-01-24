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
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct stat {int dummy; } ;
struct linux_file {struct vnode* f_vnode; } ;
struct file {scalar_t__ f_data; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int /*<<< orphan*/  NOCRED ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int) ; 
 int FUNC2 (struct vnode*,struct stat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 

__attribute__((used)) static int
FUNC3(struct file *fp, struct stat *sb, struct ucred *active_cred,
    struct thread *td)
{
	struct linux_file *filp;
	struct vnode *vp;
	int error;

	filp = (struct linux_file *)fp->f_data;
	if (filp->f_vnode == NULL)
		return (EOPNOTSUPP);

	vp = filp->f_vnode;

	FUNC1(vp, LK_SHARED | LK_RETRY);
	error = FUNC2(vp, sb, td->td_ucred, NOCRED, td);
	FUNC0(vp, 0);

	return (error);
}