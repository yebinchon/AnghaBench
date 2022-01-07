
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sglist {int dummy; } ;
struct cryptop {int crp_flags; int crp_ilen; int crp_buf; int crp_uio; int crp_mbuf; } ;


 int CRYPTO_F_IMBUF ;
 int CRYPTO_F_IOV ;
 int sglist_append (struct sglist*,int ,int ) ;
 int sglist_append_mbuf (struct sglist*,int ) ;
 int sglist_append_uio (struct sglist*,int ) ;
 int sglist_reset (struct sglist*) ;

__attribute__((used)) static int
ccp_populate_sglist(struct sglist *sg, struct cryptop *crp)
{
 int error;

 sglist_reset(sg);
 if (crp->crp_flags & CRYPTO_F_IMBUF)
  error = sglist_append_mbuf(sg, crp->crp_mbuf);
 else if (crp->crp_flags & CRYPTO_F_IOV)
  error = sglist_append_uio(sg, crp->crp_uio);
 else
  error = sglist_append(sg, crp->crp_buf, crp->crp_ilen);
 return (error);
}
