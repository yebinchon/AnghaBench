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
typedef  void* uint64_t ;
typedef  scalar_t__ uint32_t ;
struct vmcs {int dummy; } ;
struct seg_desc {void* access; void* limit; void* base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmcs*) ; 
 scalar_t__ VMCS_INVALID_ENCODING ; 
 int /*<<< orphan*/  FUNC1 (struct vmcs*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int FUNC4 (scalar_t__,void**) ; 

int
FUNC5(struct vmcs *vmcs, int running, int seg, struct seg_desc *desc)
{
	int error;
	uint32_t base, limit, access;
	uint64_t u64;

	error = FUNC3(seg, &base, &limit, &access);
	if (error != 0)
		FUNC2("vmcs_getdesc: invalid segment register %d", seg);

	if (!running)
		FUNC1(vmcs);
	if ((error = FUNC4(base, &u64)) != 0)
		goto done;
	desc->base = u64;

	if ((error = FUNC4(limit, &u64)) != 0)
		goto done;
	desc->limit = u64;

	if (access != VMCS_INVALID_ENCODING) {
		if ((error = FUNC4(access, &u64)) != 0)
			goto done;
		desc->access = u64;
	}
done:
	if (!running)
		FUNC0(vmcs);
	return (error);
}