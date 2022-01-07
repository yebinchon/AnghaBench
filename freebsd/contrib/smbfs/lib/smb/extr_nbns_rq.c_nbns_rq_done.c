
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbns_rq {scalar_t__ nr_fd; int nr_rp; int nr_rq; } ;


 int close (scalar_t__) ;
 int free (struct nbns_rq*) ;
 int mb_done (int *) ;

void
nbns_rq_done(struct nbns_rq *rqp)
{
 if (rqp == ((void*)0))
  return;
 if (rqp->nr_fd >= 0)
  close(rqp->nr_fd);
 mb_done(&rqp->nr_rq);
 mb_done(&rqp->nr_rp);
 free(rqp);
}
