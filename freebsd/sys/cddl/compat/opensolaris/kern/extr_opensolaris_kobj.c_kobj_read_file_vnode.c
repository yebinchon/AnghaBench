
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct uio {char* iov_base; unsigned int iov_len; int uio_iovcnt; unsigned int uio_resid; struct thread* uio_td; int uio_rw; int uio_segflg; scalar_t__ uio_offset; struct uio* uio_iov; } ;
struct thread {int td_ucred; } ;
struct iovec {char* iov_base; unsigned int iov_len; int uio_iovcnt; unsigned int uio_resid; struct thread* uio_td; int uio_rw; int uio_segflg; scalar_t__ uio_offset; struct iovec* uio_iov; } ;
struct _buf {struct vnode* ptr; } ;
typedef scalar_t__ off_t ;
typedef int auio ;
typedef int aiov ;


 int IO_SYNC ;
 int IO_UNIT ;
 int LK_RETRY ;
 int LK_SHARED ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int VOP_READ (struct vnode*,struct uio*,int,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int bzero (struct uio*,int) ;
 struct thread* curthread ;
 int vn_lock (struct vnode*,int) ;

int
kobj_read_file_vnode(struct _buf *file, char *buf, unsigned size, unsigned off)
{
 struct vnode *vp = file->ptr;
 struct thread *td = curthread;
 struct uio auio;
 struct iovec aiov;
 int error;

 bzero(&aiov, sizeof(aiov));
 bzero(&auio, sizeof(auio));

 aiov.iov_base = buf;
 aiov.iov_len = size;

 auio.uio_iov = &aiov;
 auio.uio_offset = (off_t)off;
 auio.uio_segflg = UIO_SYSSPACE;
 auio.uio_rw = UIO_READ;
 auio.uio_iovcnt = 1;
 auio.uio_resid = size;
 auio.uio_td = td;

 vn_lock(vp, LK_SHARED | LK_RETRY);
 error = VOP_READ(vp, &auio, IO_UNIT | IO_SYNC, td->td_ucred);
 VOP_UNLOCK(vp, 0);
 return (error != 0 ? -1 : size - auio.uio_resid);
}
