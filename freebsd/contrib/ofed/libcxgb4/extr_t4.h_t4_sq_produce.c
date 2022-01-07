
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int pidx; int size; int wq_pidx; TYPE_2__* queue; int in_use; } ;
struct t4_wq {TYPE_3__ sq; int error; } ;
struct TYPE_4__ {int host_pidx; } ;
struct TYPE_5__ {TYPE_1__ status; } ;


 scalar_t__ DIV_ROUND_UP (int,int ) ;
 int T4_EQ_ENTRY_SIZE ;
 int T4_SQ_NUM_SLOTS ;

__attribute__((used)) static inline void t4_sq_produce(struct t4_wq *wq, u8 len16)
{
 wq->sq.in_use++;
 if (++wq->sq.pidx == wq->sq.size)
  wq->sq.pidx = 0;
 wq->sq.wq_pidx += DIV_ROUND_UP(len16*16, T4_EQ_ENTRY_SIZE);
 if (wq->sq.wq_pidx >= wq->sq.size * T4_SQ_NUM_SLOTS)
  wq->sq.wq_pidx %= wq->sq.size * T4_SQ_NUM_SLOTS;
 if (!wq->error) {


  wq->sq.queue[wq->sq.size].status.host_pidx = (wq->sq.pidx);
 }
}
