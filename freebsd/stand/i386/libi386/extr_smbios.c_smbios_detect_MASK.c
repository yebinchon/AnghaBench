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
typedef  int /*<<< orphan*/ * caddr_t ;
struct TYPE_2__ {int length; size_t count; int major; int minor; scalar_t__ enabled_memory; scalar_t__ old_enabled_memory; scalar_t__ enabled_sockets; scalar_t__ populated_sockets; int /*<<< orphan*/ * addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 TYPE_1__ smbios ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,scalar_t__,...) ; 

void
FUNC4(const caddr_t addr)
{
	char		buf[16];
	caddr_t		dmi;
	size_t		i;

	FUNC2(addr);
	if (smbios.addr == NULL)
		return;

	for (dmi = smbios.addr, i = 0;
	     dmi < smbios.addr + smbios.length && i < smbios.count; i++)
		dmi = FUNC1(dmi);

	FUNC3(buf, "%d.%d", smbios.major, smbios.minor);
	FUNC0("smbios.version", buf, 1);
	if (smbios.enabled_memory > 0 || smbios.old_enabled_memory > 0) {
		FUNC3(buf, "%u", smbios.enabled_memory > 0 ?
		    smbios.enabled_memory : smbios.old_enabled_memory);
		FUNC0("smbios.memory.enabled", buf, 1);
	}
	if (smbios.enabled_sockets > 0) {
		FUNC3(buf, "%u", smbios.enabled_sockets);
		FUNC0("smbios.socket.enabled", buf, 1);
	}
	if (smbios.populated_sockets > 0) {
		FUNC3(buf, "%u", smbios.populated_sockets);
		FUNC0("smbios.socket.populated", buf, 1);
	}
}