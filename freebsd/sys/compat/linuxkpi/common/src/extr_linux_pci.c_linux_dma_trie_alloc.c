
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pctrie {int dummy; } ;


 int M_NOWAIT ;
 int linux_dma_trie_zone ;
 void* uma_zalloc (int ,int ) ;

__attribute__((used)) static void *
linux_dma_trie_alloc(struct pctrie *ptree)
{

 return (uma_zalloc(linux_dma_trie_zone, M_NOWAIT));
}
