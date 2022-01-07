
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiDmProcessResourceDescriptors (int *,int ,void*) ;
 int AcpiDmProcessSwitch (int *) ;

__attribute__((used)) static ACPI_STATUS
AcpiDmCommonDescendingOp (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ACPI_STATUS Status;




    Status = AcpiDmProcessResourceDescriptors (Op, Level, Context);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }



    Status = AcpiDmProcessSwitch (Op);
    return (Status);
}
