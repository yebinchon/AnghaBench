
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_4__ {int BitLength; } ;
struct TYPE_5__ {TYPE_1__ CommonField; } ;
typedef int BOOLEAN ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 int ACPI_ERROR (int ) ;
 int ACPI_FORMAT_UINT64 (int) ;
 int ACPI_INTEGER_BIT_SIZE ;
 int AE_INFO ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
AcpiExRegisterOverflow (
    ACPI_OPERAND_OBJECT *ObjDesc,
    UINT64 Value)
{

    if (ObjDesc->CommonField.BitLength >= ACPI_INTEGER_BIT_SIZE)
    {




        return (FALSE);
    }

    if (Value >= ((UINT64) 1 << ObjDesc->CommonField.BitLength))
    {




        ACPI_ERROR ((AE_INFO,
            "Index value 0x%8.8X%8.8X overflows field width 0x%X",
            ACPI_FORMAT_UINT64 (Value),
            ObjDesc->CommonField.BitLength));

        return (TRUE);
    }



    return (FALSE);
}
