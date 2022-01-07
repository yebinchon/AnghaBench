
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUSDMA_DCACHE_ALIGN ;
 int M_WAITOK ;
 int UMA_ZONE_OFFPAGE ;
 int * busdma_bufalloc_alloc_uncacheable ;
 void* busdma_bufalloc_create (char*,int ,int *,int *,int) ;
 int * busdma_bufalloc_free_uncacheable ;
 void* coherent_allocator ;
 void* counter_u64_alloc (int ) ;
 void* maploads_bounced ;
 void* maploads_coherent ;
 void* maploads_dmamem ;
 void* maploads_mbuf ;
 void* maploads_physmem ;
 void* maploads_total ;
 void* standard_allocator ;

__attribute__((used)) static void
busdma_init(void *dummy)
{
 int uma_flags;

 maploads_total = counter_u64_alloc(M_WAITOK);
 maploads_bounced = counter_u64_alloc(M_WAITOK);
 maploads_coherent = counter_u64_alloc(M_WAITOK);
 maploads_dmamem = counter_u64_alloc(M_WAITOK);
 maploads_mbuf = counter_u64_alloc(M_WAITOK);
 maploads_physmem = counter_u64_alloc(M_WAITOK);

 uma_flags = 0;


 standard_allocator = busdma_bufalloc_create("buffer",
     BUSDMA_DCACHE_ALIGN,
     ((void*)0),
     ((void*)0),
     uma_flags);
 coherent_allocator = busdma_bufalloc_create("coherent",
     BUSDMA_DCACHE_ALIGN,
     busdma_bufalloc_alloc_uncacheable,
     busdma_bufalloc_free_uncacheable,
     uma_flags);
}
