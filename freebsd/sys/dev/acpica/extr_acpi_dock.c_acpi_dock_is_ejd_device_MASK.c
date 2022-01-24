#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * Pointer; int /*<<< orphan*/  Length; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OBJECT ;
typedef  scalar_t__ ACPI_HANDLE ;
typedef  TYPE_1__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(ACPI_HANDLE dock_handle, ACPI_HANDLE handle)
{
	int		ret;
	ACPI_STATUS	ret_status;
	ACPI_BUFFER	ejd_buffer;
	ACPI_OBJECT	*obj;

	ret = 0;

	ejd_buffer.Pointer = NULL;
	ejd_buffer.Length = ACPI_ALLOCATE_BUFFER;
	ret_status = FUNC1(handle, "_EJD", NULL, &ejd_buffer);
	if (FUNC0(ret_status))
		goto out;

	obj = (ACPI_OBJECT *)ejd_buffer.Pointer;
	if (dock_handle == FUNC3(NULL, obj))
		ret = 1;

out:
	if (ejd_buffer.Pointer != NULL)
		FUNC2(ejd_buffer.Pointer);

	return (ret);
}