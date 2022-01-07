
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int midr; int architecture; int revision; int implementer; int part_number; int patch; unsigned int mpidr; int revidr; int id_pfr0; int id_pfr1; int id_mmfr0; int id_mmfr2; int id_mmfr3; int id_isar0; int id_isar5; int outermost_shareability; int shareability_levels; int auxiliary_registers; int innermost_shareability; int mem_barrier; int coherent_walk; int maintenance_broadcast; int generic_timer_ext; int virtualization_ext; int security_ext; unsigned int mp_ext; int dcache_line_size; int icache_line_size; int dcache_line_mask; int icache_line_mask; int ctr; int clidr; int ccsidr; int id_isar4; int id_isar3; int id_isar2; int id_isar1; int id_mmfr1; int id_afr0; int id_dfr0; int tlbtr; int tcmtr; } ;


 scalar_t__ CPU_CT_ARMV7 ;
 int CPU_CT_DMINLINE (int ) ;
 int CPU_CT_DSIZE (int ) ;
 scalar_t__ CPU_CT_FORMAT (int ) ;
 int CPU_CT_IMINLINE (int ) ;
 int CPU_CT_ISIZE (int ) ;
 int CPU_CT_xSIZE_LEN (int ) ;
 int CPU_ID_ARM_LTD ;
 int CPU_ID_IMPLEMENTOR_MASK ;
 scalar_t__ CPU_ID_IS7 (int) ;
 scalar_t__ CPU_ID_ISOLD (int) ;
 int HWCAP2_AES ;
 int HWCAP2_CRC32 ;
 int HWCAP2_PMULL ;
 int HWCAP2_SHA1 ;
 int HWCAP2_SHA2 ;
 int HWCAP_EDSP ;
 int HWCAP_FAST_MULT ;
 int HWCAP_HALF ;
 int HWCAP_IDIVA ;
 int HWCAP_IDIVT ;
 int HWCAP_LPAE ;
 int HWCAP_THUMB ;
 int HWCAP_THUMBEE ;
 int HWCAP_TLS ;
 int TUNABLE_INT_FETCH (char*,int *) ;
 int cp15_ccsidr_get () ;
 int cp15_clidr_get () ;
 int cp15_ctr_get () ;
 int cp15_id_afr0_get () ;
 int cp15_id_dfr0_get () ;
 int cp15_id_isar0_get () ;
 int cp15_id_isar1_get () ;
 int cp15_id_isar2_get () ;
 int cp15_id_isar3_get () ;
 int cp15_id_isar4_get () ;
 int cp15_id_isar5_get () ;
 int cp15_id_mmfr0_get () ;
 int cp15_id_mmfr1_get () ;
 int cp15_id_mmfr2_get () ;
 int cp15_id_mmfr3_get () ;
 int cp15_id_pfr0_get () ;
 int cp15_id_pfr1_get () ;
 int cp15_midr_get () ;
 unsigned int cp15_mpidr_get () ;
 int cp15_revidr_get () ;
 int cp15_tcmtr_get () ;
 int cp15_tlbtr_get () ;
 int cpu_quirks_actlr_mask ;
 int cpu_quirks_actlr_set ;
 TYPE_1__ cpuinfo ;
 int elf_hwcap ;
 int elf_hwcap2 ;

void
cpuinfo_init(void)
{
 TUNABLE_INT_FETCH("hw.cpu.quirks.actlr_mask", &cpu_quirks_actlr_mask);
 TUNABLE_INT_FETCH("hw.cpu.quirks.actlr_set", &cpu_quirks_actlr_set);

 cpuinfo.midr = cp15_midr_get();

 if ((cpuinfo.midr & CPU_ID_IMPLEMENTOR_MASK) == CPU_ID_ARM_LTD) {
  if (CPU_ID_ISOLD(cpuinfo.midr)) {

   cpuinfo.midr = 0;
   return;
  }
  if (CPU_ID_IS7(cpuinfo.midr)) {
   if ((cpuinfo.midr & (1 << 23)) == 0) {

    cpuinfo.midr = 0;
    return;
   }

   cpuinfo.architecture = 1;
   cpuinfo.revision = (cpuinfo.midr >> 16) & 0x7F;
  } else {

   cpuinfo.architecture = (cpuinfo.midr >> 16) & 0x0F;
   cpuinfo.revision = (cpuinfo.midr >> 20) & 0x0F;
  }
 } else {

  cpuinfo.architecture = (cpuinfo.midr >> 16) & 0x0F;
  cpuinfo.revision = (cpuinfo.midr >> 20) & 0x0F;
 }

 cpuinfo.implementer = (cpuinfo.midr >> 24) & 0xFF;
 cpuinfo.part_number = (cpuinfo.midr >> 4) & 0xFFF;
 cpuinfo.patch = cpuinfo.midr & 0x0F;


 cpuinfo.ctr = cp15_ctr_get();
 cpuinfo.tcmtr = cp15_tcmtr_get();







 if (cpuinfo.architecture != 0xF)
  return;
}
