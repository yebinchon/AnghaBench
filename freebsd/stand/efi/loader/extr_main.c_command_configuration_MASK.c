#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINTN ;
struct TYPE_4__ {size_t NumberOfTableEntries; TYPE_1__* ConfigurationTable; } ;
struct TYPE_3__ {unsigned long VendorTable; int /*<<< orphan*/  VendorGuid; } ;
typedef  int /*<<< orphan*/  EFI_GUID ;

/* Variables and functions */
 int CMD_OK ; 
 TYPE_2__* ST ; 
 int FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(int argc, char *argv[])
{
	UINTN i;
	char *name;

	FUNC2("NumberOfTableEntries=%lu\n",
		(unsigned long)ST->NumberOfTableEntries);

	for (i = 0; i < ST->NumberOfTableEntries; i++) {
		EFI_GUID *guid;

		FUNC2("  ");
		guid = &ST->ConfigurationTable[i].VendorGuid;

		if (FUNC0(guid, &name) == true) {
			FUNC2(name);
			FUNC1(name);
		} else {
			FUNC2("Error while translating UUID to name");
		}
		FUNC2(" at %p\n", ST->ConfigurationTable[i].VendorTable);
	}

	return (CMD_OK);
}