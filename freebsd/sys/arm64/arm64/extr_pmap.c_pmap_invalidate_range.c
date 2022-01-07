
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pmap_t ;


 int pmap_invalidate_range_nopin (int ,int ,int ) ;
 int sched_pin () ;
 int sched_unpin () ;

__attribute__((used)) static __inline void
pmap_invalidate_range(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{

 sched_pin();
 pmap_invalidate_range_nopin(pmap, sva, eva);
 sched_unpin();
}
