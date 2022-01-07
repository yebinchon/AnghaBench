
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_io_cq {int head; int q_depth; int phase; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void ena_com_cq_inc_head(struct ena_com_io_cq *io_cq)
{
 io_cq->head++;


 if (unlikely((io_cq->head & (io_cq->q_depth - 1)) == 0))
  io_cq->phase ^= 1;
}
