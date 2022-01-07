
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptop {struct cryptodesc* crp_desc; } ;
struct cryptodesc {struct cryptodesc* crd_next; } ;
struct ccp_session {scalar_t__ cipher_first; int blkcipher; } ;
struct ccp_queue {int dummy; } ;


 int ccp_do_hmac_done (struct ccp_queue*,struct ccp_session*,struct cryptop*,struct cryptodesc*,int) ;
 int explicit_bzero (int *,int) ;

__attribute__((used)) static void
ccp_authenc_done(struct ccp_queue *qp, struct ccp_session *s, void *vcrp,
    int error)
{
 struct cryptodesc *crda;
 struct cryptop *crp;

 explicit_bzero(&s->blkcipher, sizeof(s->blkcipher));

 crp = vcrp;
 if (s->cipher_first)
  crda = crp->crp_desc->crd_next;
 else
  crda = crp->crp_desc;

 ccp_do_hmac_done(qp, s, crp, crda, error);
}
