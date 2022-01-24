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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct vmcs {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct vmcs*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmcs*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 

int
FUNC4(struct vmcs *vmcs, int running, int ident, uint64_t *retval)
{
	int error;
	uint32_t encoding;

	/*
	 * If we need to get at vmx-specific state in the VMCS we can bypass
	 * the translation of 'ident' to 'encoding' by simply setting the
	 * sign bit. As it so happens the upper 16 bits are reserved (i.e
	 * set to 0) in the encodings for the VMCS so we are free to use the
	 * sign bit.
	 */
	if (ident < 0)
		encoding = ident & 0x7fffffff;
	else
		encoding = FUNC2(ident);

	if (encoding == (uint32_t)-1)
		return (EINVAL);

	if (!running)
		FUNC1(vmcs);

	error = FUNC3(encoding, retval);

	if (!running)
		FUNC0(vmcs);

	return (error);
}