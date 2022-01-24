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
struct vnode {scalar_t__ v_type; } ;
struct thread {int dummy; } ;
struct linux_pread_args {int /*<<< orphan*/  fd; int /*<<< orphan*/  offset; int /*<<< orphan*/  nbyte; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int EISDIR ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  cap_pread_rights ; 
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vnode**) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 

int
FUNC3(struct thread *td, struct linux_pread_args *uap)
{
	struct vnode *vp;
	int error;

	error = FUNC1(td, uap->fd, uap->buf, uap->nbyte, uap->offset);
	if (error == 0) {
		/* This seems to violate POSIX but Linux does it. */
		error = FUNC0(td, uap->fd, &cap_pread_rights, &vp);
		if (error != 0)
			return (error);
		if (vp->v_type == VDIR) {
			FUNC2(vp);
			return (EISDIR);
		}
		FUNC2(vp);
	}
	return (error);
}