
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct abd_iter {size_t iter_pos; TYPE_3__* iter_abd; } ;
struct TYPE_4__ {size_t abd_offset; } ;
struct TYPE_5__ {TYPE_1__ abd_scatter; } ;
struct TYPE_6__ {TYPE_2__ abd_u; } ;


 int ASSERT (int) ;
 int abd_is_linear (TYPE_3__*) ;
 size_t zfs_abd_chunk_size ;

__attribute__((used)) static inline size_t
abd_iter_scatter_chunk_index(struct abd_iter *aiter)
{
 ASSERT(!abd_is_linear(aiter->iter_abd));
 return ((aiter->iter_abd->abd_u.abd_scatter.abd_offset +
     aiter->iter_pos) / zfs_abd_chunk_size);
}
