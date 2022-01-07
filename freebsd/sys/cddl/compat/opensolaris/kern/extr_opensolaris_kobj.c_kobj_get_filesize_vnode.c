
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct vnode {int dummy; } ;
struct vattr {scalar_t__ va_size; } ;
struct _buf {struct vnode* ptr; } ;
struct TYPE_2__ {int td_ucred; } ;


 int LK_RETRY ;
 int LK_SHARED ;
 int VOP_GETATTR (struct vnode*,struct vattr*,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 TYPE_1__* curthread ;
 int vn_lock (struct vnode*,int) ;

__attribute__((used)) static int
kobj_get_filesize_vnode(struct _buf *file, uint64_t *size)
{
 struct vnode *vp = file->ptr;
 struct vattr va;
 int error;

 vn_lock(vp, LK_SHARED | LK_RETRY);
 error = VOP_GETATTR(vp, &va, curthread->td_ucred);
 VOP_UNLOCK(vp, 0);
 if (error == 0)
  *size = (uint64_t)va.va_size;
 return (error);
}
