
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ kgdb_lookup (char*) ;
 scalar_t__ stoppcbs ;

CORE_ADDR
kgdb_trgt_stop_pcb(u_int cpuid, u_int pcbsz)
{
 static int once = 0;

 if (stoppcbs == 0 && !once) {
  once = 1;
  stoppcbs = kgdb_lookup("stoppcbs");
 }
 if (stoppcbs == 0)
  return 0;

 return (stoppcbs + pcbsz * cpuid);
}
