
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int munmap (int *,int) ;
 int npages ;
 int pagesize ;
 int * statp ;
 int statsfd ;

void
geom_stats_close(void)
{
 if (statsfd == -1)
  return;
 munmap(statp, npages *pagesize);
 statp = ((void*)0);
 close (statsfd);
 statsfd = -1;
}
