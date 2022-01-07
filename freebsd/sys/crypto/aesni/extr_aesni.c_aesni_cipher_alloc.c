
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cryptop {int crp_buf; int crp_flags; } ;
struct cryptodesc {int crd_len; int crd_skip; } ;


 int M_AESNI ;
 int M_NOWAIT ;
 int * crypto_contiguous_subsegment (int ,int ,int ,int ) ;
 int crypto_copydata (int ,int ,int ,int ,int *) ;
 int * malloc (int ,int ,int ) ;

__attribute__((used)) static uint8_t *
aesni_cipher_alloc(struct cryptodesc *enccrd, struct cryptop *crp,
    bool *allocated)
{
 uint8_t *addr;

 addr = crypto_contiguous_subsegment(crp->crp_flags,
     crp->crp_buf, enccrd->crd_skip, enccrd->crd_len);
 if (addr != ((void*)0)) {
  *allocated = 0;
  return (addr);
 }
 addr = malloc(enccrd->crd_len, M_AESNI, M_NOWAIT);
 if (addr != ((void*)0)) {
  *allocated = 1;
  crypto_copydata(crp->crp_flags, crp->crp_buf, enccrd->crd_skip,
      enccrd->crd_len, addr);
 } else
  *allocated = 0;
 return (addr);
}
