
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct open_file {scalar_t__ f_fsdata; } ;
struct nfs_iodesc {scalar_t__ off; } ;
typedef int ssize_t ;


 scalar_t__ debug ;
 int errno ;
 int nfs_readdata (struct nfs_iodesc*,scalar_t__,void*,size_t) ;
 int printf (char*,...) ;
 char* strerror (int) ;
 int twiddle (int) ;

int
nfs_read(struct open_file *f, void *buf, size_t size, size_t *resid)
{
 struct nfs_iodesc *fp = (struct nfs_iodesc *)f->f_fsdata;
 ssize_t cc;
 char *addr = buf;






 while ((int)size > 0) {
  twiddle(16);
  cc = nfs_readdata(fp, fp->off, (void *)addr, size);

  if (cc == -1) {




   return (errno);
  }
  if (cc == 0) {




   goto ret;
  }
  fp->off += cc;
  addr += cc;
  size -= cc;
 }
ret:
 if (resid)
  *resid = size;

 return (0);
}
