
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pctrie {int dummy; } ;


 int linux_dma_trie_zone ;
 int uma_zfree (int ,void*) ;

__attribute__((used)) static void
linux_dma_trie_free(struct pctrie *ptree, void *node)
{

 uma_zfree(linux_dma_trie_zone, node);
}
