
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmctx {int dummy; } ;
struct iovec {char* iov_base; int iov_len; } ;


 int assert (int ) ;
 int bcopy (char const*,char*,size_t) ;
 size_t min (size_t,int ) ;

void
vm_copyout(struct vmctx *ctx, int vcpu, const void *vp, struct iovec *iov,
    size_t len)
{
 const char *src;
 char *dst;
 size_t n;

 src = vp;
 while (len) {
  assert(iov->iov_len);
  n = min(len, iov->iov_len);
  dst = iov->iov_base;
  bcopy(src, dst, n);

  iov++;
  src += n;
  len -= n;
 }
}
