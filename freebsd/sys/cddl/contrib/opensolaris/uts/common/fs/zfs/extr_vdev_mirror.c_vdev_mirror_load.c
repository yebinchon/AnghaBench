
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ vdev_nonrot; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_8__ {scalar_t__ mm_root; } ;
typedef TYPE_2__ mirror_map_t ;


 scalar_t__ ABS (scalar_t__) ;
 int INT_MAX ;
 int non_rotating_inc ;
 int non_rotating_seek_inc ;
 int rotating_inc ;
 int rotating_seek_inc ;
 scalar_t__ rotating_seek_offset ;
 scalar_t__ vdev_queue_lastoffset (TYPE_1__*) ;
 int vdev_queue_length (TYPE_1__*) ;

__attribute__((used)) static int
vdev_mirror_load(mirror_map_t *mm, vdev_t *vd, uint64_t zio_offset)
{
 uint64_t lastoffset;
 int load;


 if (mm->mm_root)
  return (INT_MAX);
 load = vdev_queue_length(vd);
 lastoffset = vdev_queue_lastoffset(vd);

 if (vd->vdev_nonrot) {

  if (lastoffset == zio_offset)
   return (load + non_rotating_inc);







  return (load + non_rotating_seek_inc);
 }


 if (lastoffset == zio_offset)
  return (load + rotating_inc);






 if (ABS(lastoffset - zio_offset) < rotating_seek_offset)
  return (load + (rotating_seek_inc / 2));


 return (load + rotating_seek_inc);
}
