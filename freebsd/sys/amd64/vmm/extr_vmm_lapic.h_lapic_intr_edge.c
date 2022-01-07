
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;


 int LAPIC_TRIG_EDGE ;
 int lapic_set_intr (struct vm*,int,int,int ) ;

__attribute__((used)) static __inline int
lapic_intr_edge(struct vm *vm, int cpu, int vector)
{

 return (lapic_set_intr(vm, cpu, vector, LAPIC_TRIG_EDGE));
}
