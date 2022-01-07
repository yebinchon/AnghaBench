
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct t4_status_page {size_t host_cidx; } ;
struct t4_cq {size_t cidx; int cidx_inc; int size; int cqid; int qid_mask; int gen; TYPE_1__* queue; int ugts; int bits_type_ts; } ;
struct TYPE_2__ {int bits_type_ts; } ;


 int CIDXINC_M ;
 int CIDXINC_V (int) ;
 int INGRESSQID_V (int) ;
 int SEINTARM_V (int ) ;
 int TIMERREG_V (int) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void t4_hwcq_consume(struct t4_cq *cq)
{
 cq->bits_type_ts = cq->queue[cq->cidx].bits_type_ts;
 if (++cq->cidx_inc == (cq->size >> 4) || cq->cidx_inc == CIDXINC_M) {
  uint32_t val;

  val = SEINTARM_V(0) | CIDXINC_V(cq->cidx_inc) | TIMERREG_V(7) |
   INGRESSQID_V(cq->cqid & cq->qid_mask);
  writel(val, cq->ugts);
  cq->cidx_inc = 0;
 }
 if (++cq->cidx == cq->size) {
  cq->cidx = 0;
  cq->gen ^= 1;
 }
 ((struct t4_status_page *)&cq->queue[cq->size])->host_cidx = cq->cidx;
}
