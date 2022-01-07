
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AIRTIME_QUANTUM_MAX ;
 unsigned int AIRTIME_QUANTUM_MIN ;
 unsigned int AIRTIME_QUANTUM_TARGET ;

__attribute__((used)) static unsigned int get_airtime_quantum(unsigned int max_wt)
{
 unsigned int quantum = AIRTIME_QUANTUM_TARGET / max_wt;

 if (quantum < AIRTIME_QUANTUM_MIN)
  quantum = AIRTIME_QUANTUM_MIN;
 else if (quantum > AIRTIME_QUANTUM_MAX)
  quantum = AIRTIME_QUANTUM_MAX;

 return quantum;
}
