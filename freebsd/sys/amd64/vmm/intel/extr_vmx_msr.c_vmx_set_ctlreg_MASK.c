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
typedef  unsigned long uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MSR_VMX_BASIC ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 unsigned long FUNC2 (int) ; 
 int FUNC3 (unsigned long,int) ; 
 int FUNC4 (unsigned long,int) ; 

int
FUNC5(int ctl_reg, int true_ctl_reg, uint32_t ones_mask,
	       uint32_t zeros_mask, uint32_t *retval)
{
	int i;
	uint64_t val, trueval;
	bool true_ctls_avail, one_allowed, zero_allowed;

	/* We cannot ask the same bit to be set to both '1' and '0' */
	if ((ones_mask ^ zeros_mask) != (ones_mask | zeros_mask))
		return (EINVAL);

	true_ctls_avail = (FUNC2(MSR_VMX_BASIC) & (1UL << 55)) != 0;

	val = FUNC2(ctl_reg);
	if (true_ctls_avail)
		trueval = FUNC2(true_ctl_reg);		/* step c */
	else
		trueval = val;				/* step a */

	for (i = 0; i < 32; i++) {
		one_allowed = FUNC3(trueval, i);
		zero_allowed = FUNC4(trueval, i);

		FUNC0(one_allowed || zero_allowed,
			("invalid zero/one setting for bit %d of ctl 0x%0x, "
			 "truectl 0x%0x\n", i, ctl_reg, true_ctl_reg));

		if (zero_allowed && !one_allowed) {		/* b(i),c(i) */
			if (ones_mask & (1 << i))
				return (EINVAL);
			*retval &= ~(1 << i);
		} else if (one_allowed && !zero_allowed) {	/* b(i),c(i) */
			if (zeros_mask & (1 << i))
				return (EINVAL);
			*retval |= 1 << i;
		} else {
			if (zeros_mask & (1 << i))	/* b(ii),c(ii) */
				*retval &= ~(1 << i);
			else if (ones_mask & (1 << i)) /* b(ii), c(ii) */
				*retval |= 1 << i;
			else if (!true_ctls_avail)
				*retval &= ~(1 << i);	/* b(iii) */
			else if (FUNC4(val, i))/* c(iii)*/
				*retval &= ~(1 << i);
			else if (FUNC3(val, i)) /* c(iv) */
				*retval |= 1 << i;
			else {
				FUNC1("vmx_set_ctlreg: unable to determine "
				      "correct value of ctl bit %d for msr "
				      "0x%0x and true msr 0x%0x", i, ctl_reg,
				      true_ctl_reg);
			}
		}
	}

	return (0);
}