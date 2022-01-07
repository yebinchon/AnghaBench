
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct uio {int uio_iovcnt; struct iovec* uio_iov; } ;
struct iovec {scalar_t__ iov_base; } ;
struct cryptop {int crp_flags; scalar_t__ crp_buf; } ;
struct cryptodesc {int crd_skip; scalar_t__ crd_len; } ;


 int CRYPTO_F_IMBUF ;
 int CRYPTO_F_IOV ;
 int M_NOWAIT ;
 int M_PADLOCK ;
 int * malloc (scalar_t__,int ,int ) ;

__attribute__((used)) static u_char *
padlock_cipher_alloc(struct cryptodesc *enccrd, struct cryptop *crp,
    int *allocated)
{
 u_char *addr;

 if (crp->crp_flags & CRYPTO_F_IMBUF)
  goto alloc;
 else {
  if (crp->crp_flags & CRYPTO_F_IOV) {
   struct uio *uio;
   struct iovec *iov;

   uio = (struct uio *)crp->crp_buf;
   if (uio->uio_iovcnt != 1)
    goto alloc;
   iov = uio->uio_iov;
   addr = (u_char *)iov->iov_base + enccrd->crd_skip;
  } else {
   addr = (u_char *)crp->crp_buf;
  }
  if (((uintptr_t)addr & 0xf) != 0)
   goto alloc;
  *allocated = 0;
  return (addr);
 }
alloc:
 *allocated = 1;
 addr = malloc(enccrd->crd_len + 16, M_PADLOCK, M_NOWAIT);
 return (addr);
}
