
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int param ;
typedef int UINT32 ;
struct TYPE_10__ {int Length; TYPE_2__* Pointer; } ;
struct TYPE_8__ {int Value; } ;
struct TYPE_9__ {scalar_t__ Type; TYPE_1__ Integer; } ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_2__ ACPI_OBJECT ;
typedef int * ACPI_HANDLE ;
typedef TYPE_3__ ACPI_BUFFER ;


 int * ACPI_ROOT_OBJECT ;
 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ AE_BUFFER_OVERFLOW ;
 scalar_t__ AE_NO_MEMORY ;
 scalar_t__ AE_TYPE ;
 scalar_t__ AcpiEvaluateObject (int *,char*,int *,TYPE_3__*) ;
 TYPE_2__* AcpiOsAllocate (int) ;
 int AcpiOsFree (TYPE_2__*) ;
 scalar_t__ acpi_ConvertBufferToInteger (TYPE_3__*,int *) ;

ACPI_STATUS
acpi_GetInteger(ACPI_HANDLE handle, char *path, UINT32 *number)
{
    ACPI_STATUS status;
    ACPI_BUFFER buf;
    ACPI_OBJECT param;

    if (handle == ((void*)0))
 handle = ACPI_ROOT_OBJECT;





    buf.Pointer = &param;
    buf.Length = sizeof(param);
    status = AcpiEvaluateObject(handle, path, ((void*)0), &buf);
    if (ACPI_SUCCESS(status)) {
 if (param.Type == ACPI_TYPE_INTEGER)
     *number = param.Integer.Value;
 else
     status = AE_TYPE;
    }
    if (status == AE_BUFFER_OVERFLOW) {
 if ((buf.Pointer = AcpiOsAllocate(buf.Length)) == ((void*)0)) {
     status = AE_NO_MEMORY;
 } else {
     status = AcpiEvaluateObject(handle, path, ((void*)0), &buf);
     if (ACPI_SUCCESS(status))
  status = acpi_ConvertBufferToInteger(&buf, number);
     AcpiOsFree(buf.Pointer);
 }
    }
    return (status);
}
