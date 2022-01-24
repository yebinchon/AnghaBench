#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
typedef  size_t u_int ;
struct TYPE_2__ {int /*<<< orphan*/  id_aa64pfr0; int /*<<< orphan*/  id_aa64isar1; int /*<<< orphan*/  id_aa64isar0; } ;

/* Variables and functions */
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
#define  ID_AA64ISAR0_AES_BASE 135 
#define  ID_AA64ISAR0_AES_PMULL 134 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ID_AA64ISAR0_Atomic_IMPL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ID_AA64ISAR0_CRC32_BASE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ID_AA64ISAR0_DP_IMPL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ID_AA64ISAR0_RDM_IMPL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
#define  ID_AA64ISAR0_SHA2_512 133 
#define  ID_AA64ISAR0_SHA2_BASE 132 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ ID_AA64ISAR0_SM3_IMPL ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ ID_AA64ISAR0_SM4_IMPL ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ ID_AA64ISAR1_DPB_IMPL ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ ID_AA64ISAR1_FCMA_IMPL ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ ID_AA64ISAR1_JSCVT_IMPL ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ ID_AA64ISAR1_LRCPC_IMPL ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
#define  ID_AA64PFR0_AdvSIMD_HP 131 
#define  ID_AA64PFR0_AdvSIMD_IMPL 130 
 int FUNC13 (int /*<<< orphan*/ ) ; 
#define  ID_AA64PFR0_FP_HP 129 
#define  ID_AA64PFR0_FP_IMPL 128 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ ID_AA64PFR0_SVE_IMPL ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cpu_desc ; 

__attribute__((used)) static u_long
FUNC16(u_int cpu)
{
	u_long hwcap = 0;

	if (FUNC3(cpu_desc[cpu].id_aa64isar0) == ID_AA64ISAR0_DP_IMPL)
		hwcap |= HWCAP_ASIMDDP;

	if (FUNC8(cpu_desc[cpu].id_aa64isar0) == ID_AA64ISAR0_SM4_IMPL)
		hwcap |= HWCAP_SM4;

	if (FUNC7(cpu_desc[cpu].id_aa64isar0) == ID_AA64ISAR0_SM3_IMPL)
		hwcap |= HWCAP_SM3;

	if (FUNC4(cpu_desc[cpu].id_aa64isar0) == ID_AA64ISAR0_RDM_IMPL)
		hwcap |= HWCAP_ASIMDRDM;

	if (FUNC1(cpu_desc[cpu].id_aa64isar0) == ID_AA64ISAR0_Atomic_IMPL)
		hwcap |= HWCAP_ATOMICS;

	if (FUNC2(cpu_desc[cpu].id_aa64isar0) == ID_AA64ISAR0_CRC32_BASE)
		hwcap |= HWCAP_CRC32;

	switch (FUNC6(cpu_desc[cpu].id_aa64isar0)) {
		case ID_AA64ISAR0_SHA2_BASE:
			hwcap |= HWCAP_SHA2;
			break;
		case ID_AA64ISAR0_SHA2_512:
			hwcap |= HWCAP_SHA2 | HWCAP_SHA512;
			break;
	default:
		break;
	}

	if (FUNC5(cpu_desc[cpu].id_aa64isar0))
		hwcap |= HWCAP_SHA1;

	switch (FUNC0(cpu_desc[cpu].id_aa64isar0)) {
	case ID_AA64ISAR0_AES_BASE:
		hwcap |= HWCAP_AES;
		break;
	case ID_AA64ISAR0_AES_PMULL:
		hwcap |= HWCAP_PMULL | HWCAP_AES;
		break;
	default:
		break;
	}

	if (FUNC12(cpu_desc[cpu].id_aa64isar1) == ID_AA64ISAR1_LRCPC_IMPL)
		hwcap |= HWCAP_LRCPC;

	if (FUNC10(cpu_desc[cpu].id_aa64isar1) == ID_AA64ISAR1_FCMA_IMPL)
		hwcap |= HWCAP_FCMA;

	if (FUNC11(cpu_desc[cpu].id_aa64isar1) == ID_AA64ISAR1_JSCVT_IMPL)
		hwcap |= HWCAP_JSCVT;

	if (FUNC9(cpu_desc[cpu].id_aa64isar1) == ID_AA64ISAR1_DPB_IMPL)
		hwcap |= HWCAP_DCPOP;

	if (FUNC15(cpu_desc[cpu].id_aa64pfr0) == ID_AA64PFR0_SVE_IMPL)
		hwcap |= HWCAP_SVE;

	switch (FUNC13(cpu_desc[cpu].id_aa64pfr0)) {
	case ID_AA64PFR0_AdvSIMD_IMPL:
		hwcap |= HWCAP_ASIMD;
		break;
	case ID_AA64PFR0_AdvSIMD_HP:
		hwcap |= HWCAP_ASIMD | HWCAP_ASIMDDP;
		break;
	default:
		break;
	}

	switch (FUNC14(cpu_desc[cpu].id_aa64pfr0)) {
	case ID_AA64PFR0_FP_IMPL:
		hwcap |= HWCAP_FP;
		break;
	case ID_AA64PFR0_FP_HP:
		hwcap |= HWCAP_FP | HWCAP_FPHP;
		break;
	default:
		break;
	}

	return (hwcap);
}