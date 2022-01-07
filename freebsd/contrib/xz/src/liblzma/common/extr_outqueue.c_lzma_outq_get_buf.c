
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bufs_used; int bufs_allocated; size_t bufs_pos; int buf_size_max; int bufs_mem; TYPE_2__* bufs; } ;
typedef TYPE_1__ lzma_outq ;
struct TYPE_6__ {int finished; scalar_t__ size; int buf; } ;
typedef TYPE_2__ lzma_outbuf ;


 int assert (int) ;

extern lzma_outbuf *
lzma_outq_get_buf(lzma_outq *outq)
{

 assert(outq->bufs_used < outq->bufs_allocated);


 lzma_outbuf *buf = &outq->bufs[outq->bufs_pos];
 buf->buf = outq->bufs_mem + outq->bufs_pos * outq->buf_size_max;
 buf->size = 0;
 buf->finished = 0;


 if (++outq->bufs_pos == outq->bufs_allocated)
  outq->bufs_pos = 0;

 ++outq->bufs_used;

 return buf;
}
