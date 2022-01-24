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
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 

int
FUNC5(struct vmcs *vmcs, int running, int ident, uint64_t val)
{
	int error;
	uint32_t encoding;

	if (ident < 0)
		encoding = ident & 0x7fffffff;
	else
		encoding = FUNC2(ident);

	if (encoding == (uint32_t)-1)
		return (EINVAL);

	val = FUNC3(encoding, val);

	if (!running)
		FUNC1(vmcs);

	error = FUNC4(encoding, val);

	if (!running)
		FUNC0(vmcs);

	return (error);
}