
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef size_t u_int ;
struct TYPE_2__ {int id_aa64pfr0; int id_aa64isar1; int id_aa64isar0; } ;


 int HWCAP_AES ;
 int HWCAP_ASIMD ;
 int HWCAP_ASIMDDP ;
 int HWCAP_ASIMDRDM ;
 int HWCAP_ATOMICS ;
 int HWCAP_CRC32 ;
 int HWCAP_DCPOP ;
 int HWCAP_FCMA ;
 int HWCAP_FP ;
 int HWCAP_FPHP ;
 int HWCAP_JSCVT ;
 int HWCAP_LRCPC ;
 int HWCAP_PMULL ;
 int HWCAP_SHA1 ;
 int HWCAP_SHA2 ;
 int HWCAP_SHA512 ;
 int HWCAP_SM3 ;
 int HWCAP_SM4 ;
 int HWCAP_SVE ;


 int ID_AA64ISAR0_AES_VAL (int ) ;
 scalar_t__ ID_AA64ISAR0_Atomic_IMPL ;
 scalar_t__ ID_AA64ISAR0_Atomic_VAL (int ) ;
 scalar_t__ ID_AA64ISAR0_CRC32_BASE ;
 scalar_t__ ID_AA64ISAR0_CRC32_VAL (int ) ;
 scalar_t__ ID_AA64ISAR0_DP_IMPL ;
 scalar_t__ ID_AA64ISAR0_DP_VAL (int ) ;
 scalar_t__ ID_AA64ISAR0_RDM_IMPL ;
 scalar_t__ ID_AA64ISAR0_RDM_VAL (int ) ;
 scalar_t__ ID_AA64ISAR0_SHA1_VAL (int ) ;


 int ID_AA64ISAR0_SHA2_VAL (int ) ;
 scalar_t__ ID_AA64ISAR0_SM3_IMPL ;
 scalar_t__ ID_AA64ISAR0_SM3_VAL (int ) ;
 scalar_t__ ID_AA64ISAR0_SM4_IMPL ;
 scalar_t__ ID_AA64ISAR0_SM4_VAL (int ) ;
 scalar_t__ ID_AA64ISAR1_DPB_IMPL ;
 scalar_t__ ID_AA64ISAR1_DPB_VAL (int ) ;
 scalar_t__ ID_AA64ISAR1_FCMA_IMPL ;
 scalar_t__ ID_AA64ISAR1_FCMA_VAL (int ) ;
 scalar_t__ ID_AA64ISAR1_JSCVT_IMPL ;
 scalar_t__ ID_AA64ISAR1_JSCVT_VAL (int ) ;
 scalar_t__ ID_AA64ISAR1_LRCPC_IMPL ;
 scalar_t__ ID_AA64ISAR1_LRCPC_VAL (int ) ;


 int ID_AA64PFR0_AdvSIMD_VAL (int ) ;


 int ID_AA64PFR0_FP_VAL (int ) ;
 scalar_t__ ID_AA64PFR0_SVE_IMPL ;
 scalar_t__ ID_AA64PFR0_SVE_VAL (int ) ;
 TYPE_1__* cpu_desc ;

__attribute__((used)) static u_long
parse_cpu_features_hwcap(u_int cpu)
{
 u_long hwcap = 0;

 if (ID_AA64ISAR0_DP_VAL(cpu_desc[cpu].id_aa64isar0) == ID_AA64ISAR0_DP_IMPL)
  hwcap |= HWCAP_ASIMDDP;

 if (ID_AA64ISAR0_SM4_VAL(cpu_desc[cpu].id_aa64isar0) == ID_AA64ISAR0_SM4_IMPL)
  hwcap |= HWCAP_SM4;

 if (ID_AA64ISAR0_SM3_VAL(cpu_desc[cpu].id_aa64isar0) == ID_AA64ISAR0_SM3_IMPL)
  hwcap |= HWCAP_SM3;

 if (ID_AA64ISAR0_RDM_VAL(cpu_desc[cpu].id_aa64isar0) == ID_AA64ISAR0_RDM_IMPL)
  hwcap |= HWCAP_ASIMDRDM;

 if (ID_AA64ISAR0_Atomic_VAL(cpu_desc[cpu].id_aa64isar0) == ID_AA64ISAR0_Atomic_IMPL)
  hwcap |= HWCAP_ATOMICS;

 if (ID_AA64ISAR0_CRC32_VAL(cpu_desc[cpu].id_aa64isar0) == ID_AA64ISAR0_CRC32_BASE)
  hwcap |= HWCAP_CRC32;

 switch (ID_AA64ISAR0_SHA2_VAL(cpu_desc[cpu].id_aa64isar0)) {
  case 132:
   hwcap |= HWCAP_SHA2;
   break;
  case 133:
   hwcap |= HWCAP_SHA2 | HWCAP_SHA512;
   break;
 default:
  break;
 }

 if (ID_AA64ISAR0_SHA1_VAL(cpu_desc[cpu].id_aa64isar0))
  hwcap |= HWCAP_SHA1;

 switch (ID_AA64ISAR0_AES_VAL(cpu_desc[cpu].id_aa64isar0)) {
 case 135:
  hwcap |= HWCAP_AES;
  break;
 case 134:
  hwcap |= HWCAP_PMULL | HWCAP_AES;
  break;
 default:
  break;
 }

 if (ID_AA64ISAR1_LRCPC_VAL(cpu_desc[cpu].id_aa64isar1) == ID_AA64ISAR1_LRCPC_IMPL)
  hwcap |= HWCAP_LRCPC;

 if (ID_AA64ISAR1_FCMA_VAL(cpu_desc[cpu].id_aa64isar1) == ID_AA64ISAR1_FCMA_IMPL)
  hwcap |= HWCAP_FCMA;

 if (ID_AA64ISAR1_JSCVT_VAL(cpu_desc[cpu].id_aa64isar1) == ID_AA64ISAR1_JSCVT_IMPL)
  hwcap |= HWCAP_JSCVT;

 if (ID_AA64ISAR1_DPB_VAL(cpu_desc[cpu].id_aa64isar1) == ID_AA64ISAR1_DPB_IMPL)
  hwcap |= HWCAP_DCPOP;

 if (ID_AA64PFR0_SVE_VAL(cpu_desc[cpu].id_aa64pfr0) == ID_AA64PFR0_SVE_IMPL)
  hwcap |= HWCAP_SVE;

 switch (ID_AA64PFR0_AdvSIMD_VAL(cpu_desc[cpu].id_aa64pfr0)) {
 case 130:
  hwcap |= HWCAP_ASIMD;
  break;
 case 131:
  hwcap |= HWCAP_ASIMD | HWCAP_ASIMDDP;
  break;
 default:
  break;
 }

 switch (ID_AA64PFR0_FP_VAL(cpu_desc[cpu].id_aa64pfr0)) {
 case 128:
  hwcap |= HWCAP_FP;
  break;
 case 129:
  hwcap |= HWCAP_FP | HWCAP_FPHP;
  break;
 default:
  break;
 }

 return (hwcap);
}
