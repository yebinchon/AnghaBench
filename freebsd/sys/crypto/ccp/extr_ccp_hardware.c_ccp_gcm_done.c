
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tag ;
struct cryptop {int crp_etype; int crp_buf; int crp_flags; struct cryptodesc* crp_desc; } ;
struct cryptodesc {int crd_flags; int crd_inject; struct cryptodesc* crd_next; } ;
struct TYPE_2__ {int hash_len; int final_block; } ;
struct ccp_session {TYPE_1__ gmac; TYPE_1__ blkcipher; int pending; scalar_t__ cipher_first; } ;
struct ccp_queue {int dummy; } ;


 int CRD_F_ENCRYPT ;
 int EBADMSG ;
 int GMAC_DIGEST_LEN ;
 int crypto_copydata (int ,int ,int ,int,char*) ;
 int crypto_done (struct cryptop*) ;
 int explicit_bzero (TYPE_1__*,int) ;
 scalar_t__ timingsafe_bcmp (char*,int ,int ) ;

__attribute__((used)) static void
ccp_gcm_done(struct ccp_queue *qp, struct ccp_session *s, void *vcrp,
    int error)
{
 char tag[GMAC_DIGEST_LEN];
 struct cryptodesc *crde, *crda;
 struct cryptop *crp;

 crp = vcrp;
 if (s->cipher_first) {
  crde = crp->crp_desc;
  crda = crp->crp_desc->crd_next;
 } else {
  crde = crp->crp_desc->crd_next;
  crda = crp->crp_desc;
 }

 s->pending--;

 if (error != 0) {
  crp->crp_etype = error;
  goto out;
 }


 if ((crde->crd_flags & CRD_F_ENCRYPT) != 0)
  goto out;


 crypto_copydata(crp->crp_flags, crp->crp_buf, crda->crd_inject,
     sizeof(tag), tag);


 if (timingsafe_bcmp(tag, s->gmac.final_block, s->gmac.hash_len) != 0)
  crp->crp_etype = EBADMSG;

out:
 explicit_bzero(&s->blkcipher, sizeof(s->blkcipher));
 explicit_bzero(&s->gmac, sizeof(s->gmac));
 crypto_done(crp);
}
