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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int nmi_flush_l1d_sw ; 
 scalar_t__ pirvec ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmx_disable ; 
 int /*<<< orphan*/ * vpid_unr ; 

__attribute__((used)) static int
FUNC3(void)
{

	if (pirvec >= 0)
		FUNC1(pirvec);

	if (vpid_unr != NULL) {
		FUNC0(vpid_unr);
		vpid_unr = NULL;
	}

	if (nmi_flush_l1d_sw == 1)
		nmi_flush_l1d_sw = 0;

	FUNC2(NULL, vmx_disable, NULL, NULL);

	return (0);
}