#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  AA_FIREPLANE_CONFIG ; 
 int /*<<< orphan*/  AA_INTR_ID ; 
 int /*<<< orphan*/  ASI_FIREPLANE_CONFIG_REG ; 
 int /*<<< orphan*/  ASI_INTR_ID ; 
 int /*<<< orphan*/  ASI_JBUS_CONFIG_REG ; 
 int /*<<< orphan*/  ASI_UPA_CONFIG_REG ; 
#define  CPU_IMPL_SPARC64 139 
#define  CPU_IMPL_SPARC64V 138 
#define  CPU_IMPL_ULTRASPARCI 137 
#define  CPU_IMPL_ULTRASPARCII 136 
#define  CPU_IMPL_ULTRASPARCIII 135 
#define  CPU_IMPL_ULTRASPARCIIIi 134 
#define  CPU_IMPL_ULTRASPARCIIIip 133 
#define  CPU_IMPL_ULTRASPARCIIIp 132 
#define  CPU_IMPL_ULTRASPARCIIe 131 
#define  CPU_IMPL_ULTRASPARCIIi 130 
#define  CPU_IMPL_ULTRASPARCIV 129 
#define  CPU_IMPL_ULTRASPARCIVp 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int cpu_impl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint32_t
FUNC5(void)
{

	switch (cpu_impl) {
	case CPU_IMPL_SPARC64:
	case CPU_IMPL_SPARC64V:
	case CPU_IMPL_ULTRASPARCI:
	case CPU_IMPL_ULTRASPARCII:
	case CPU_IMPL_ULTRASPARCIIi:
	case CPU_IMPL_ULTRASPARCIIe:
		return (FUNC3(FUNC4(0, ASI_UPA_CONFIG_REG)));
	case CPU_IMPL_ULTRASPARCIII:
	case CPU_IMPL_ULTRASPARCIIIp:
		return (FUNC0(FUNC4(AA_FIREPLANE_CONFIG,
		    ASI_FIREPLANE_CONFIG_REG)));
	case CPU_IMPL_ULTRASPARCIIIi:
	case CPU_IMPL_ULTRASPARCIIIip:
		return (FUNC2(FUNC4(0, ASI_JBUS_CONFIG_REG)));
	case CPU_IMPL_ULTRASPARCIV:
	case CPU_IMPL_ULTRASPARCIVp:
		return (FUNC1(FUNC4(AA_INTR_ID, ASI_INTR_ID)));
	default:
		return (0);
	}
}