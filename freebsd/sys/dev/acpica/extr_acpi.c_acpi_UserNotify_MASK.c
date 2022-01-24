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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  notify_buf ;
struct TYPE_3__ {int /*<<< orphan*/ * Pointer; int /*<<< orphan*/  Length; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_1__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

void
FUNC5(const char *subsystem, ACPI_HANDLE h, uint8_t notify)
{
    char		notify_buf[16];
    ACPI_BUFFER		handle_buf;
    ACPI_STATUS		status;

    if (subsystem == NULL)
	return;

    handle_buf.Pointer = NULL;
    handle_buf.Length = ACPI_ALLOCATE_BUFFER;
    status = FUNC1(h, &handle_buf, FALSE);
    if (FUNC0(status))
	return;
    FUNC4(notify_buf, sizeof(notify_buf), "notify=0x%02x", notify);
    FUNC3("ACPI", subsystem, handle_buf.Pointer, notify_buf);
    FUNC2(handle_buf.Pointer);
}