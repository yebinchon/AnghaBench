
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ in_use; scalar_t__ cidx; scalar_t__ size; scalar_t__ pidx; TYPE_2__* queue; int msn; } ;
struct t4_wq {TYPE_3__ rq; int error; } ;
struct TYPE_4__ {scalar_t__ host_cidx; } ;
struct TYPE_5__ {TYPE_1__ status; } ;


 int assert (int) ;

__attribute__((used)) static inline void t4_rq_consume(struct t4_wq *wq)
{
 wq->rq.in_use--;
 wq->rq.msn++;
 if (++wq->rq.cidx == wq->rq.size)
  wq->rq.cidx = 0;
 assert((wq->rq.cidx != wq->rq.pidx) || wq->rq.in_use == 0);
 if (!wq->error)
  wq->rq.queue[wq->rq.size].status.host_cidx = wq->rq.cidx;
}
