
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int f_ksid; } ;
typedef TYPE_1__ fuid_domain_t ;
typedef int avl_tree_t ;


 int avl_destroy (int *) ;
 TYPE_1__* avl_destroy_nodes (int *,void**) ;
 int kmem_free (TYPE_1__*,int) ;
 int ksiddomain_rele (int ) ;

void
zfs_fuid_table_destroy(avl_tree_t *idx_tree, avl_tree_t *domain_tree)
{
 fuid_domain_t *domnode;
 void *cookie;

 cookie = ((void*)0);
 while (domnode = avl_destroy_nodes(domain_tree, &cookie))
  ksiddomain_rele(domnode->f_ksid);

 avl_destroy(domain_tree);
 cookie = ((void*)0);
 while (domnode = avl_destroy_nodes(idx_tree, &cookie))
  kmem_free(domnode, sizeof (fuid_domain_t));
 avl_destroy(idx_tree);
}
