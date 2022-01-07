
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MADV_DOFORK ;
 int ibv_madvise_range (void*,size_t,int ) ;
 scalar_t__ mm_root ;
 int too_late ;

int ibv_dofork_range(void *base, size_t size)
{
 if (mm_root)
  return ibv_madvise_range(base, size, MADV_DOFORK);
 else {
  too_late = 1;
  return 0;
 }
}
