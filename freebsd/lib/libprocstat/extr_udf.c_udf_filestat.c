
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnstat {int vn_fsid; int vn_fileid; } ;
struct vnode {int dummy; } ;
struct udf_node {int im_dev; int hash_id; scalar_t__ udfmp; } ;
struct udf_mnt {int im_dev; int hash_id; scalar_t__ udfmp; } ;
typedef int node ;
typedef int mnt ;
typedef struct vnstat kvm_t ;


 scalar_t__ VTON (struct vnode*) ;
 int assert (struct vnstat*) ;
 int dev2udev (struct vnstat*,int ) ;
 int kvm_read_all (struct vnstat*,unsigned long,struct udf_node*,int) ;
 int warnx (char*,void*,...) ;

int
udf_filestat(kvm_t *kd, struct vnode *vp, struct vnstat *vn)
{
 struct udf_node node;
 struct udf_mnt mnt;
 int error;

 assert(kd);
 assert(vn);
 error = kvm_read_all(kd, (unsigned long)VTON(vp), &node, sizeof(node));
 if (error != 0) {
  warnx("can't read udf fnode at %p", (void *)VTON(vp));
  return (1);
 }
        error = kvm_read_all(kd, (unsigned long)node.udfmp, &mnt, sizeof(mnt));
        if (error != 0) {
                warnx("can't read udf_mnt at %p for vnode %p",
                    (void *)node.udfmp, vp);
                return (1);
        }
 vn->vn_fileid = node.hash_id;
 vn->vn_fsid = dev2udev(kd, mnt.im_dev);
 return (0);
}
