
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {int rt_root; } ;
typedef TYPE_1__ range_tree_t ;
struct TYPE_8__ {scalar_t__ rs_end; scalar_t__ rs_start; } ;
typedef TYPE_2__ range_seg_t ;


 int VERIFY (int) ;
 TYPE_2__* avl_find (int *,TYPE_2__*,int *) ;

__attribute__((used)) static range_seg_t *
range_tree_find_impl(range_tree_t *rt, uint64_t start, uint64_t size)
{
 range_seg_t rsearch;
 uint64_t end = start + size;

 VERIFY(size != 0);

 rsearch.rs_start = start;
 rsearch.rs_end = end;
 return (avl_find(&rt->rt_root, &rsearch, ((void*)0)));
}
