
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptop {struct cryptodesc* crp_desc; } ;
struct cryptodesc {int dummy; } ;
struct ccp_session {int dummy; } ;
struct ccp_queue {int dummy; } ;


 int ccp_do_hmac_done (struct ccp_queue*,struct ccp_session*,struct cryptop*,struct cryptodesc*,int) ;

__attribute__((used)) static void
ccp_hmac_done(struct ccp_queue *qp, struct ccp_session *s, void *vcrp,
    int error)
{
 struct cryptodesc *crd;
 struct cryptop *crp;

 crp = vcrp;
 crd = crp->crp_desc;
 ccp_do_hmac_done(qp, s, crp, crd, error);
}
