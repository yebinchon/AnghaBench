
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int lzma_vli ;
typedef int lzma_ret ;
struct TYPE_4__ {scalar_t__ bufs_used; size_t bufs_pos; scalar_t__ read_pos; TYPE_2__* bufs; scalar_t__ bufs_allocated; } ;
typedef TYPE_1__ lzma_outq ;
struct TYPE_5__ {scalar_t__ size; int uncompressed_size; int unpadded_size; int buf; int finished; } ;
typedef TYPE_2__ lzma_outbuf ;


 int LZMA_OK ;
 int LZMA_STREAM_END ;
 int lzma_bufcpy (int ,scalar_t__*,scalar_t__,int *,size_t*,size_t) ;

extern lzma_ret
lzma_outq_read(lzma_outq *restrict outq, uint8_t *restrict out,
  size_t *restrict out_pos, size_t out_size,
  lzma_vli *restrict unpadded_size,
  lzma_vli *restrict uncompressed_size)
{

 if (outq->bufs_used == 0)
  return LZMA_OK;


 uint32_t i = outq->bufs_pos - outq->bufs_used;
 if (outq->bufs_pos < outq->bufs_used)
  i += outq->bufs_allocated;

 lzma_outbuf *buf = &outq->bufs[i];


 if (!buf->finished)
  return LZMA_OK;


 lzma_bufcpy(buf->buf, &outq->read_pos, buf->size,
   out, out_pos, out_size);


 if (outq->read_pos < buf->size)
  return LZMA_OK;


 *unpadded_size = buf->unpadded_size;
 *uncompressed_size = buf->uncompressed_size;


 --outq->bufs_used;
 outq->read_pos = 0;

 return LZMA_STREAM_END;
}
