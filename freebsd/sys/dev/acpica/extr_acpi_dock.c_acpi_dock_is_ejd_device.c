
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Pointer; int Length; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_OBJECT ;
typedef scalar_t__ ACPI_HANDLE ;
typedef TYPE_1__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiEvaluateObject (scalar_t__,char*,int *,TYPE_1__*) ;
 int AcpiOsFree (int *) ;
 scalar_t__ acpi_GetReference (int *,int *) ;

__attribute__((used)) static int
acpi_dock_is_ejd_device(ACPI_HANDLE dock_handle, ACPI_HANDLE handle)
{
 int ret;
 ACPI_STATUS ret_status;
 ACPI_BUFFER ejd_buffer;
 ACPI_OBJECT *obj;

 ret = 0;

 ejd_buffer.Pointer = ((void*)0);
 ejd_buffer.Length = ACPI_ALLOCATE_BUFFER;
 ret_status = AcpiEvaluateObject(handle, "_EJD", ((void*)0), &ejd_buffer);
 if (ACPI_FAILURE(ret_status))
  goto out;

 obj = (ACPI_OBJECT *)ejd_buffer.Pointer;
 if (dock_handle == acpi_GetReference(((void*)0), obj))
  ret = 1;

out:
 if (ejd_buffer.Pointer != ((void*)0))
  AcpiOsFree(ejd_buffer.Pointer);

 return (ret);
}
