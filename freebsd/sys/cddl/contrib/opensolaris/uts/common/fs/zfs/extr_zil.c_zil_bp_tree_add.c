
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zl_bp_tree; } ;
typedef TYPE_1__ zilog_t ;
struct TYPE_7__ {int zn_dva; } ;
typedef TYPE_2__ zil_bp_node_t ;
typedef int dva_t ;
typedef int blkptr_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;


 int * BP_IDENTITY (int const*) ;
 scalar_t__ BP_IS_EMBEDDED (int const*) ;
 int EEXIST ;
 int KM_SLEEP ;
 int SET_ERROR (int ) ;
 int * avl_find (int *,int const*,int *) ;
 int avl_insert (int *,TYPE_2__*,int ) ;
 TYPE_2__* kmem_alloc (int,int ) ;

int
zil_bp_tree_add(zilog_t *zilog, const blkptr_t *bp)
{
 avl_tree_t *t = &zilog->zl_bp_tree;
 const dva_t *dva;
 zil_bp_node_t *zn;
 avl_index_t where;

 if (BP_IS_EMBEDDED(bp))
  return (0);

 dva = BP_IDENTITY(bp);

 if (avl_find(t, dva, &where) != ((void*)0))
  return (SET_ERROR(EEXIST));

 zn = kmem_alloc(sizeof (zil_bp_node_t), KM_SLEEP);
 zn->zn_dva = *dva;
 avl_insert(t, zn, where);

 return (0);
}
