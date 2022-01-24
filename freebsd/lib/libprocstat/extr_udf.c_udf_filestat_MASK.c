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
struct vnstat {int /*<<< orphan*/  vn_fsid; int /*<<< orphan*/  vn_fileid; } ;
struct vnode {int dummy; } ;
struct udf_node {int /*<<< orphan*/  im_dev; int /*<<< orphan*/  hash_id; scalar_t__ udfmp; } ;
struct udf_mnt {int /*<<< orphan*/  im_dev; int /*<<< orphan*/  hash_id; scalar_t__ udfmp; } ;
typedef  int /*<<< orphan*/  node ;
typedef  int /*<<< orphan*/  mnt ;
typedef  struct vnstat kvm_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnstat*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnstat*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vnstat*,unsigned long,struct udf_node*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,...) ; 

int
FUNC5(kvm_t *kd, struct vnode *vp, struct vnstat *vn)
{
	struct udf_node node;
	struct udf_mnt mnt;
	int error;

	FUNC1(kd);
	FUNC1(vn);
	error = FUNC3(kd, (unsigned long)FUNC0(vp), &node, sizeof(node));
	if (error != 0) {
		FUNC4("can't read udf fnode at %p", (void *)FUNC0(vp));
		return (1);
	}
        error = FUNC3(kd, (unsigned long)node.udfmp, &mnt, sizeof(mnt));
        if (error != 0) {
                FUNC4("can't read udf_mnt at %p for vnode %p",
                    (void *)node.udfmp, vp);
                return (1);
        }
	vn->vn_fileid = node.hash_id;
	vn->vn_fsid = FUNC2(kd, mnt.im_dev);
	return (0);
}