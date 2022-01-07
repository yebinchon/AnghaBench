
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo {int mem_unit; scalar_t__ totalhigh; int totalram; } ;


 int PAGE_SIZE ;
 int physmem ;

void
si_meminfo(struct sysinfo *si)
{
 si->totalram = physmem;
 si->totalhigh = 0;
 si->mem_unit = PAGE_SIZE;
}
