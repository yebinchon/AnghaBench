
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_refcnt; int p_node; void* p_private; int * p_pfunc; } ;
typedef TYPE_1__ arc_prune_t ;
typedef int arc_prune_func_t ;


 int KM_SLEEP ;
 int arc_prune_list ;
 int arc_prune_mtx ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int list_insert_head (int *,TYPE_1__*) ;
 int list_link_init (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_refcount_add (int *,int *) ;
 int zfs_refcount_create (int *) ;

arc_prune_t *
arc_add_prune_callback(arc_prune_func_t *func, void *private)
{
 arc_prune_t *p;

 p = kmem_alloc(sizeof (*p), KM_SLEEP);
 p->p_pfunc = func;
 p->p_private = private;
 list_link_init(&p->p_node);
 zfs_refcount_create(&p->p_refcnt);

 mutex_enter(&arc_prune_mtx);
 zfs_refcount_add(&p->p_refcnt, &arc_prune_list);
 list_insert_head(&arc_prune_list, p);
 mutex_exit(&arc_prune_mtx);

 return (p);
}
