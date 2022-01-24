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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 char** hpet_ids ; 

__attribute__((used)) static ACPI_STATUS
FUNC4(ACPI_HANDLE handle, UINT32 level, void *context,
    void **status)
{
	char 		**ids;
	uint32_t	id = (uint32_t)(uintptr_t)context;
	uint32_t	uid = 0;

	for (ids = hpet_ids; *ids != NULL; ids++) {
		if (FUNC2(handle, *ids))
		        break;
	}
	if (*ids == NULL)
		return (AE_OK);
	if (FUNC0(FUNC1(handle, "_UID", &uid)) ||
	    id == uid)
		*status = FUNC3(handle);
	return (AE_OK);
}