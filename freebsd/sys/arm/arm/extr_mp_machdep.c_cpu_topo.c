
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_group {int dummy; } ;


 int CG_SHARE_L2 ;
 int mp_ncpus ;
 struct cpu_group* smp_topo_1level (int ,int ,int ) ;

struct cpu_group *
cpu_topo(void)
{

 return (smp_topo_1level(CG_SHARE_L2, mp_ncpus, 0));
}
