
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_softc {struct ccp_queue* queues; } ;
struct ccp_queue {int cq_sg_dst; int cq_sg_ulptx; int cq_sg_crp; int cq_lock; } ;


 int mtx_destroy (int *) ;
 size_t nitems (struct ccp_queue*) ;
 int sglist_free (int ) ;

__attribute__((used)) static void
ccp_free_queues(struct ccp_softc *sc)
{
 struct ccp_queue *qp;
 size_t i;

 for (i = 0; i < nitems(sc->queues); i++) {
  qp = &sc->queues[i];

  mtx_destroy(&qp->cq_lock);
  sglist_free(qp->cq_sg_crp);
  sglist_free(qp->cq_sg_ulptx);
  sglist_free(qp->cq_sg_dst);
 }
}
