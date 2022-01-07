
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {int Type; } ;
struct TYPE_5__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 int ACPI_RTYPE_ANY ;
 int ACPI_RTYPE_BUFFER ;
 int ACPI_RTYPE_INTEGER ;
 int ACPI_RTYPE_NONE ;
 int ACPI_RTYPE_PACKAGE ;
 int ACPI_RTYPE_REFERENCE ;
 int ACPI_RTYPE_STRING ;






__attribute__((used)) static UINT32
AcpiNsGetBitmappedType (
    ACPI_OPERAND_OBJECT *ReturnObject)
{
    UINT32 ReturnBtype;


    if (!ReturnObject)
    {
        return (ACPI_RTYPE_NONE);
    }



    switch (ReturnObject->Common.Type)
    {
    case 131:

        ReturnBtype = ACPI_RTYPE_INTEGER;
        break;

    case 132:

        ReturnBtype = ACPI_RTYPE_BUFFER;
        break;

    case 128:

        ReturnBtype = ACPI_RTYPE_STRING;
        break;

    case 129:

        ReturnBtype = ACPI_RTYPE_PACKAGE;
        break;

    case 130:

        ReturnBtype = ACPI_RTYPE_REFERENCE;
        break;

    default:



        ReturnBtype = ACPI_RTYPE_ANY;
        break;
    }

    return (ReturnBtype);
}
