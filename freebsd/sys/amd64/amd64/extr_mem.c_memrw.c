
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int u_long ;
typedef scalar_t__ u_int ;
struct uio {scalar_t__ uio_resid; scalar_t__ uio_iovcnt; int uio_offset; int uio_rw; struct iovec* uio_iov; } ;
struct iovec {scalar_t__ iov_len; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ ssize_t ;




 int DMAP_MIN_ADDRESS ;
 int EFAULT ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int PHYS_TO_DMAP (int) ;
 int UIO_READ ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int cpu_getmaxphyaddr () ;
 int dev2unit (struct cdev*) ;
 int dmaplimit ;
 int kernacc (void*,scalar_t__,int ) ;
 int kernel_pmap ;
 int panic (char*) ;
 int pmap_extract (int ,int) ;
 void* pmap_mapdev (int,scalar_t__) ;
 int pmap_unmapdev (int ,scalar_t__) ;
 int uiomove (void*,scalar_t__,struct uio*) ;
 scalar_t__ ulmin (scalar_t__,scalar_t__) ;

int
memrw(struct cdev *dev, struct uio *uio, int flags)
{
 struct iovec *iov;
 void *p;
 ssize_t orig_resid;
 u_long v, vd;
 u_int c;
 int error;

 error = 0;
 orig_resid = uio->uio_resid;
 while (uio->uio_resid > 0 && error == 0) {
  iov = uio->uio_iov;
  if (iov->iov_len == 0) {
   uio->uio_iov++;
   uio->uio_iovcnt--;
   if (uio->uio_iovcnt < 0)
    panic("memrw");
   continue;
  }
  v = uio->uio_offset;
  c = ulmin(iov->iov_len, PAGE_SIZE - (u_int)(v & PAGE_MASK));

  switch (dev2unit(dev)) {
  case 129:





   if (v >= DMAP_MIN_ADDRESS &&
       v < DMAP_MIN_ADDRESS + dmaplimit) {
    error = uiomove((void *)v, c, uio);
    break;
   }

   if (!kernacc((void *)v, c, uio->uio_rw == UIO_READ ?
       VM_PROT_READ : VM_PROT_WRITE)) {
    error = EFAULT;
    break;
   }
   v = pmap_extract(kernel_pmap, v);
   if (v == 0) {
    error = EFAULT;
    break;
   }

  case 128:
   if (v < dmaplimit) {
    vd = PHYS_TO_DMAP(v);
    error = uiomove((void *)vd, c, uio);
    break;
   }
   if (v > cpu_getmaxphyaddr()) {
    error = EFAULT;
    break;
   }
   p = pmap_mapdev(v, PAGE_SIZE);
   error = uiomove(p, c, uio);
   pmap_unmapdev((vm_offset_t)p, PAGE_SIZE);
   break;
  }
 }




 if (uio->uio_resid != orig_resid)
  error = 0;
 return (error);
}
