
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct pcb {int dummy; } ;
typedef int CORE_ADDR ;


 int kgdb_trgt_stop_pcb (int ,int) ;

CORE_ADDR
kgdb_trgt_core_pcb(u_int cpuid)
{

 return (kgdb_trgt_stop_pcb(cpuid, sizeof(struct pcb)));



}
