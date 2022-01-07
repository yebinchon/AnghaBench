
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct pcpu {scalar_t__ pc_clock; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 struct pcpu* pcpu_find (int) ;

int
cpu_est_clockrate(int cpu_id, uint64_t *rate)
{
 struct pcpu *pc;

 pc = pcpu_find(cpu_id);
 if (pc == ((void*)0) || rate == ((void*)0))
  return (EINVAL);

 if (pc->pc_clock == 0)
  return (EOPNOTSUPP);

 *rate = pc->pc_clock;
 return (0);
}
