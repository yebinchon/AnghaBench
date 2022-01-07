
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct pt_config {int cpuid_0x15_eax; int cpuid_0x15_ebx; } ;


 int pte_bad_config ;
 int pte_internal ;

__attribute__((used)) static int pt_time_ctc_fc(uint64_t *fc, uint64_t ctc,
     const struct pt_config *config)
{
 uint32_t eax, ebx;

 if (!fc || !config)
  return -pte_internal;

 eax = config->cpuid_0x15_eax;
 ebx = config->cpuid_0x15_ebx;


 if (!eax || !ebx)
  return -pte_bad_config;

 *fc = (ctc * ebx) / eax;
 return 0;
}
