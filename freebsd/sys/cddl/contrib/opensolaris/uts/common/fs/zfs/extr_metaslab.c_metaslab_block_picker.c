
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ rs_end; int rs_start; } ;
typedef TYPE_1__ range_seg_t ;
typedef int avl_tree_t ;


 TYPE_1__* AVL_NEXT (int *,TYPE_1__*) ;
 scalar_t__ P2ROUNDUP (int ,scalar_t__) ;
 TYPE_1__* metaslab_block_find (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static uint64_t
metaslab_block_picker(avl_tree_t *t, uint64_t *cursor, uint64_t size,
    uint64_t align)
{
 range_seg_t *rs = metaslab_block_find(t, *cursor, size);

 while (rs != ((void*)0)) {
  uint64_t offset = P2ROUNDUP(rs->rs_start, align);

  if (offset + size <= rs->rs_end) {
   *cursor = offset + size;
   return (offset);
  }
  rs = AVL_NEXT(t, rs);
 }





 if (*cursor == 0)
  return (-1ULL);

 *cursor = 0;
 return (metaslab_block_picker(t, cursor, size, align));
}
