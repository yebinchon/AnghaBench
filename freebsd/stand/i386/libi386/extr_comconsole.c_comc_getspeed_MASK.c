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
typedef  int u_int ;
typedef  int u_char ;

/* Variables and functions */
 int CFCR_DLAB ; 
 int FUNC0 (int) ; 
 int COMSPEED ; 
 scalar_t__ com_cfcr ; 
 scalar_t__ com_dlbh ; 
 scalar_t__ com_dlbl ; 
 scalar_t__ comc_port ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC3(void)
{
	u_int	divisor;
	u_char	dlbh;
	u_char	dlbl;
	u_char	cfcr;

	cfcr = FUNC1(comc_port + com_cfcr);
	FUNC2(comc_port + com_cfcr, CFCR_DLAB | cfcr);

	dlbl = FUNC1(comc_port + com_dlbl);
	dlbh = FUNC1(comc_port + com_dlbh);

	FUNC2(comc_port + com_cfcr, cfcr);

	divisor = dlbh << 8 | dlbl;

	/* XXX there should be more sanity checking. */
	if (divisor == 0)
		return (COMSPEED);
	return (FUNC0(divisor));
}