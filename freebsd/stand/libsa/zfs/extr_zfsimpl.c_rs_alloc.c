
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdev_t ;
typedef void* uint64_t ;
struct TYPE_4__ {void* rs_split_offset; void* rs_asize; void* rs_offset; int * rs_vd; } ;
typedef TYPE_1__ remap_segment_t ;


 TYPE_1__* malloc (int) ;

__attribute__((used)) static remap_segment_t *
rs_alloc(vdev_t *vd, uint64_t offset, uint64_t asize, uint64_t split_offset)
{
 remap_segment_t *rs = malloc(sizeof (remap_segment_t));

 if (rs != ((void*)0)) {
  rs->rs_vd = vd;
  rs->rs_offset = offset;
  rs->rs_asize = asize;
  rs->rs_split_offset = split_offset;
 }

 return (rs);
}
