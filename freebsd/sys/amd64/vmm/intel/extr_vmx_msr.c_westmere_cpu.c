
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int CPUID_TO_FAMILY (int ) ;
 int CPUID_TO_MODEL (int ) ;
 int cpu_id ;

__attribute__((used)) static bool
westmere_cpu(void)
{
 u_int family, model;





 family = CPUID_TO_FAMILY(cpu_id);
 model = CPUID_TO_MODEL(cpu_id);
 if (family == 0x6) {
  switch (model) {
  case 0x25:
  case 0x2C:
   return (1);
  default:
   break;
  }
 }
 return (0);
}
