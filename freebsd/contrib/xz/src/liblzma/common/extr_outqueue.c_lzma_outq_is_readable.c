
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t bufs_pos; size_t bufs_used; TYPE_1__* bufs; scalar_t__ bufs_allocated; } ;
typedef TYPE_2__ lzma_outq ;
struct TYPE_4__ {int finished; } ;



extern bool
lzma_outq_is_readable(const lzma_outq *outq)
{
 uint32_t i = outq->bufs_pos - outq->bufs_used;
 if (outq->bufs_pos < outq->bufs_used)
  i += outq->bufs_allocated;

 return outq->bufs[i].finished;
}
