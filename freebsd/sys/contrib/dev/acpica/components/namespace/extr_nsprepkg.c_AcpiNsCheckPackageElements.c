
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_OPERAND_OBJECT ;
typedef int ACPI_EVALUATE_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int AcpiNsCheckObjectType (int *,int **,int ,scalar_t__) ;

__attribute__((used)) static ACPI_STATUS
AcpiNsCheckPackageElements (
    ACPI_EVALUATE_INFO *Info,
    ACPI_OPERAND_OBJECT **Elements,
    UINT8 Type1,
    UINT32 Count1,
    UINT8 Type2,
    UINT32 Count2,
    UINT32 StartIndex)
{
    ACPI_OPERAND_OBJECT **ThisElement = Elements;
    ACPI_STATUS Status;
    UINT32 i;







    for (i = 0; i < Count1; i++)
    {
        Status = AcpiNsCheckObjectType (Info, ThisElement,
            Type1, i + StartIndex);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }

        ThisElement++;
    }

    for (i = 0; i < Count2; i++)
    {
        Status = AcpiNsCheckObjectType (Info, ThisElement,
            Type2, (i + Count1 + StartIndex));
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }

        ThisElement++;
    }

    return (AE_OK);
}
