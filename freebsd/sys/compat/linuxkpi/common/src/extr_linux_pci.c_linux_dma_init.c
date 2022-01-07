
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_dma_obj {int dummy; } ;


 int UMA_ALIGN_PTR ;
 void* linux_dma_obj_zone ;
 void* linux_dma_trie_zone ;
 int pctrie_node_size () ;
 int * pctrie_zone_init ;
 void* uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static void
linux_dma_init(void *arg)
{

 linux_dma_trie_zone = uma_zcreate("linux_dma_pctrie",
     pctrie_node_size(), ((void*)0), ((void*)0), pctrie_zone_init, ((void*)0),
     UMA_ALIGN_PTR, 0);
 linux_dma_obj_zone = uma_zcreate("linux_dma_object",
     sizeof(struct linux_dma_obj), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);

}
