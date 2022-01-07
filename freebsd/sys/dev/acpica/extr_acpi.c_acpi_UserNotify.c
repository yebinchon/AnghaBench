
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int notify_buf ;
struct TYPE_3__ {int * Pointer; int Length; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;
typedef TYPE_1__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiNsHandleToPathname (int ,TYPE_1__*,int ) ;
 int AcpiOsFree (int *) ;
 int FALSE ;
 int devctl_notify (char*,char const*,int *,char*) ;
 int snprintf (char*,int,char*,int) ;

void
acpi_UserNotify(const char *subsystem, ACPI_HANDLE h, uint8_t notify)
{
    char notify_buf[16];
    ACPI_BUFFER handle_buf;
    ACPI_STATUS status;

    if (subsystem == ((void*)0))
 return;

    handle_buf.Pointer = ((void*)0);
    handle_buf.Length = ACPI_ALLOCATE_BUFFER;
    status = AcpiNsHandleToPathname(h, &handle_buf, FALSE);
    if (ACPI_FAILURE(status))
 return;
    snprintf(notify_buf, sizeof(notify_buf), "notify=0x%02x", notify);
    devctl_notify("ACPI", subsystem, handle_buf.Pointer, notify_buf);
    AcpiOsFree(handle_buf.Pointer);
}
