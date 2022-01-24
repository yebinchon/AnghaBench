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
struct linux_file {struct vnode* f_vnode; } ;
struct kinfo_file {int /*<<< orphan*/  kf_type; } ;
struct filedesc {int dummy; } ;
struct file {struct linux_file* f_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  KF_TYPE_DEV ; 
 int /*<<< orphan*/  KF_TYPE_VNODE ; 
 int FUNC2 (struct vnode*,struct kinfo_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 

__attribute__((used)) static int
FUNC5(struct file *fp, struct kinfo_file *kif,
    struct filedesc *fdp)
{
	struct linux_file *filp;
	struct vnode *vp;
	int error;

	filp = fp->f_data;
	vp = filp->f_vnode;
	if (vp == NULL) {
		error = 0;
		kif->kf_type = KF_TYPE_DEV;
	} else {
		FUNC3(vp);
		FUNC1(fdp);
		error = FUNC2(vp, kif);
		FUNC4(vp);
		kif->kf_type = KF_TYPE_VNODE;
		FUNC0(fdp);
	}
	return (error);
}