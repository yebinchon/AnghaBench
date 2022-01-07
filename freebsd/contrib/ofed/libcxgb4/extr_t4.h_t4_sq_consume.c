
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int in_use; scalar_t__ cidx; scalar_t__ flush_cidx; scalar_t__ size; scalar_t__ pidx; TYPE_2__* queue; } ;
struct t4_wq {TYPE_3__ sq; int error; } ;
struct TYPE_4__ {scalar_t__ host_cidx; } ;
struct TYPE_5__ {TYPE_1__ status; } ;


 int assert (int) ;

__attribute__((used)) static inline void t4_sq_consume(struct t4_wq *wq)
{
 assert(wq->sq.in_use >= 1);
 if (wq->sq.cidx == wq->sq.flush_cidx)
                wq->sq.flush_cidx = -1;
 wq->sq.in_use--;
 if (++wq->sq.cidx == wq->sq.size)
  wq->sq.cidx = 0;
 assert((wq->sq.cidx != wq->sq.pidx) || wq->sq.in_use == 0);
 if (!wq->error){


  wq->sq.queue[wq->sq.size].status.host_cidx = wq->sq.cidx;
 }
}
