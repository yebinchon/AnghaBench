
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krping_cb {int pd; int cq; int qp; } ;


 int ib_dealloc_pd (int ) ;
 int ib_destroy_cq (int ) ;
 int ib_destroy_qp (int ) ;

__attribute__((used)) static void krping_free_qp(struct krping_cb *cb)
{
 ib_destroy_qp(cb->qp);
 ib_destroy_cq(cb->cq);
 ib_dealloc_pd(cb->pd);
}
