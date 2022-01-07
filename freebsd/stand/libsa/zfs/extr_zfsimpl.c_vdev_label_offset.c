
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_label_t ;
typedef scalar_t__ uint64_t ;


 int VDEV_LABELS ;

__attribute__((used)) static uint64_t
vdev_label_offset(uint64_t psize, int l, uint64_t offset)
{
 uint64_t label_offset;

 if (l < VDEV_LABELS / 2)
  label_offset = 0;
 else
  label_offset = psize - VDEV_LABELS * sizeof (vdev_label_t);

 return (offset + l * sizeof (vdev_label_t) + label_offset);
}
