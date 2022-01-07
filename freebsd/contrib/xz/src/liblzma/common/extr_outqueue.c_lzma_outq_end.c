
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * bufs_mem; int * bufs; } ;
typedef TYPE_1__ lzma_outq ;
typedef int lzma_allocator ;


 int lzma_free (int *,int const*) ;

extern void
lzma_outq_end(lzma_outq *outq, const lzma_allocator *allocator)
{
 lzma_free(outq->bufs, allocator);
 outq->bufs = ((void*)0);

 lzma_free(outq->bufs_mem, allocator);
 outq->bufs_mem = ((void*)0);

 return;
}
