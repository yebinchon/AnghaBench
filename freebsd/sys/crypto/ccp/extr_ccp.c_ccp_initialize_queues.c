
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_softc {struct ccp_queue* queues; } ;
struct ccp_queue {size_t cq_qindex; void* cq_sg_dst; void* cq_sg_ulptx; void* cq_sg_crp; int cq_lock; struct ccp_softc* cq_softc; } ;


 int MTX_DEF ;
 int M_WAITOK ;
 int mtx_init (int *,char*,int *,int ) ;
 size_t nitems (struct ccp_queue*) ;
 void* sglist_alloc (int,int ) ;

__attribute__((used)) static void
ccp_initialize_queues(struct ccp_softc *sc)
{
 struct ccp_queue *qp;
 size_t i;

 for (i = 0; i < nitems(sc->queues); i++) {
  qp = &sc->queues[i];

  qp->cq_softc = sc;
  qp->cq_qindex = i;
  mtx_init(&qp->cq_lock, "ccp queue", ((void*)0), MTX_DEF);

  qp->cq_sg_crp = sglist_alloc(32, M_WAITOK);

  qp->cq_sg_ulptx = sglist_alloc(34, M_WAITOK);
  qp->cq_sg_dst = sglist_alloc(2, M_WAITOK);
 }
}
