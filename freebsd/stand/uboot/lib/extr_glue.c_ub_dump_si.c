
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sys_info {int clk_bus; int clk_cpu; int mr_no; TYPE_1__* mr; int bar; } ;
struct TYPE_2__ {scalar_t__ flags; int size; int start; } ;


 int printf (char*,...) ;
 char* ub_mem_type (scalar_t__) ;

void
ub_dump_si(struct sys_info *si)
{
 int i;

 printf("sys info:\n");
 printf("  clkbus\t= %ld MHz\n", si->clk_bus / 1000 / 1000);
 printf("  clkcpu\t= %ld MHz\n", si->clk_cpu / 1000 / 1000);
 printf("  bar\t\t= 0x%08lx\n", si->bar);

 printf("---\n");
 for (i = 0; i < si->mr_no; i++) {
  if (si->mr[i].flags == 0)
   break;

  printf("  start\t= 0x%08lx\n", si->mr[i].start);
  printf("  size\t= 0x%08lx\n", si->mr[i].size);
  printf("  type\t= %s\n", ub_mem_type(si->mr[i].flags));
  printf("---\n");
 }
}
