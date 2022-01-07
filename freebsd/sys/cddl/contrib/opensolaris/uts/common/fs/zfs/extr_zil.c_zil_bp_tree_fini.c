
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zl_bp_tree; } ;
typedef TYPE_1__ zilog_t ;
typedef int zil_bp_node_t ;
typedef int avl_tree_t ;


 int avl_destroy (int *) ;
 int * avl_destroy_nodes (int *,void**) ;
 int kmem_free (int *,int) ;

__attribute__((used)) static void
zil_bp_tree_fini(zilog_t *zilog)
{
 avl_tree_t *t = &zilog->zl_bp_tree;
 zil_bp_node_t *zn;
 void *cookie = ((void*)0);

 while ((zn = avl_destroy_nodes(t, &cookie)) != ((void*)0))
  kmem_free(zn, sizeof (zil_bp_node_t));

 avl_destroy(t);
}
