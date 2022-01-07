
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCPU_SET (int ,int ) ;
 int SMCCC_ARCH_WORKAROUND_1 ;
 scalar_t__ SMCCC_RET_SUCCESS ;
 int bp_harden ;
 scalar_t__ smccc_arch_features (int ) ;
 int smccc_arch_workaround_1 ;

__attribute__((used)) static void
install_psci_bp_hardening(void)
{

 if (smccc_arch_features(SMCCC_ARCH_WORKAROUND_1) != SMCCC_RET_SUCCESS)
  return;

 PCPU_SET(bp_harden, smccc_arch_workaround_1);
}
