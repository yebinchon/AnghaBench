
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {TYPE_1__* f_ksid; int f_idx; } ;
typedef TYPE_2__ fuid_domain_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;
struct TYPE_5__ {char* kd_name; } ;


 TYPE_2__* avl_find (int *,TYPE_2__*,int *) ;
 char* nulldomain ;

char *
zfs_fuid_idx_domain(avl_tree_t *idx_tree, uint32_t idx)
{
 fuid_domain_t searchnode, *findnode;
 avl_index_t loc;

 searchnode.f_idx = idx;

 findnode = avl_find(idx_tree, &searchnode, &loc);

 return (findnode ? findnode->f_ksid->kd_name : nulldomain);
}
