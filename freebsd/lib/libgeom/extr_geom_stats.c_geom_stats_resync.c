
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 void* mmap (void*,int,int ,int ,int,int ) ;
 int npages ;
 int pagesize ;
 void* statp ;
 int statsfd ;

void
geom_stats_resync(void)
{
 void *p;

 if (statsfd == -1)
  return;
 for (;;) {
  p = mmap(statp, (npages + 1) * pagesize,
      PROT_READ, MAP_SHARED, statsfd, 0);
  if (p == MAP_FAILED)
   break;
  else
   statp = p;
  npages++;
 }
}
