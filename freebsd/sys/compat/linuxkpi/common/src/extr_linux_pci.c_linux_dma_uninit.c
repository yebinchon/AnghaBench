
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int linux_dma_obj_zone ;
 int linux_dma_trie_zone ;
 int uma_zdestroy (int ) ;

__attribute__((used)) static void
linux_dma_uninit(void *arg)
{

 uma_zdestroy(linux_dma_obj_zone);
 uma_zdestroy(linux_dma_trie_zone);
}
