
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mirror_map_t ;
 int * mm_child ;
 size_t offsetof (int ,int ) ;

__attribute__((used)) static inline size_t
vdev_mirror_map_size(int children)
{
 return (offsetof(mirror_map_t, mm_child[children]) +
     sizeof(int) * children);
}
