
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int data ;
struct TYPE_3__ {int Length; char* Pointer; } ;
typedef scalar_t__ ACPI_HANDLE ;
typedef TYPE_1__ ACPI_BUFFER ;


 int ACPI_FULL_PATHNAME ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AcpiGetName (scalar_t__,int ,TYPE_1__*) ;

char *
acpi_name(ACPI_HANDLE handle)
{
    ACPI_BUFFER buf;
    static char data[256];

    buf.Length = sizeof(data);
    buf.Pointer = data;

    if (handle && ACPI_SUCCESS(AcpiGetName(handle, ACPI_FULL_PATHNAME, &buf)))
 return (data);
    return ("(unknown)");
}
