
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MallocCount ;
 int MallocMax ;
 int MallocPool ;
 int printf (char*,int,int) ;
 int zallocstats (int *) ;

void
mallocstats(void)
{
 printf("Active Allocations: %d/%d\n", MallocCount, MallocMax);



}
