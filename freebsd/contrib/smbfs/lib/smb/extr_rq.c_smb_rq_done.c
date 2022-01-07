
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rq {int rq_rq; int rq_rp; } ;


 int free (struct smb_rq*) ;
 int mb_done (int *) ;

void
smb_rq_done(struct smb_rq *rqp)
{
 mb_done(&rqp->rq_rp);
 mb_done(&rqp->rq_rq);
 free(rqp);
}
