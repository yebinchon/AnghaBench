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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct arm_boot_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arm_boot_params*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct arm_boot_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct arm_boot_params*) ; 

vm_offset_t
FUNC3(struct arm_boot_params *abp)
{
	vm_offset_t lastaddr;

#if defined(LINUX_BOOT_ABI)
	if ((lastaddr = linux_parse_boot_param(abp)) != 0)
		return lastaddr;
#endif
#if defined(FREEBSD_BOOT_LOADER)
	if ((lastaddr = freebsd_parse_boot_param(abp)) != 0)
		return lastaddr;
#endif
	/* Fall back to hardcoded metadata. */
	lastaddr = FUNC0(abp, NULL, 0);

	return lastaddr;
}