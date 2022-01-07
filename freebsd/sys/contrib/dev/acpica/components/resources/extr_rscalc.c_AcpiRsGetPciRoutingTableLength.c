
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_10__ {scalar_t__ Class; int Node; } ;
struct TYPE_9__ {scalar_t__ Length; } ;
struct TYPE_8__ {scalar_t__ Type; } ;
struct TYPE_7__ {scalar_t__ Count; TYPE_5__** Elements; } ;
struct TYPE_11__ {TYPE_4__ Reference; TYPE_3__ String; TYPE_2__ Common; TYPE_1__ Package; } ;
typedef scalar_t__ BOOLEAN ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_SIZE ;
typedef int ACPI_PCI_ROUTING_TABLE ;
typedef TYPE_5__ ACPI_OPERAND_OBJECT ;


 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_REFCLASS_NAME ;
 scalar_t__ ACPI_ROUND_UP_TO_64BIT (scalar_t__) ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 scalar_t__ ACPI_TYPE_STRING ;
 int AE_AML_OPERAND_TYPE ;
 int AE_OK ;
 scalar_t__ AcpiNsGetPathnameLength (int ) ;
 scalar_t__ FALSE ;
 int RsGetPciRoutingTableLength ;
 scalar_t__ TRUE ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiRsGetPciRoutingTableLength (
    ACPI_OPERAND_OBJECT *PackageObject,
    ACPI_SIZE *BufferSizeNeeded)
{
    UINT32 NumberOfElements;
    ACPI_SIZE TempSizeNeeded = 0;
    ACPI_OPERAND_OBJECT **TopObjectList;
    UINT32 Index;
    ACPI_OPERAND_OBJECT *PackageElement;
    ACPI_OPERAND_OBJECT **SubObjectList;
    BOOLEAN NameFound;
    UINT32 TableIndex;


    ACPI_FUNCTION_TRACE (RsGetPciRoutingTableLength);


    NumberOfElements = PackageObject->Package.Count;
    TopObjectList = PackageObject->Package.Elements;

    for (Index = 0; Index < NumberOfElements; Index++)
    {


        PackageElement = *TopObjectList;



        if (!PackageElement ||
            (PackageElement->Common.Type != ACPI_TYPE_PACKAGE))
        {
            return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
        }





        SubObjectList = PackageElement->Package.Elements;



        NameFound = FALSE;

        for (TableIndex = 0;
             TableIndex < PackageElement->Package.Count && !NameFound;
             TableIndex++)
        {
            if (*SubObjectList &&

                ((ACPI_TYPE_STRING ==
                    (*SubObjectList)->Common.Type) ||

                ((ACPI_TYPE_LOCAL_REFERENCE ==
                    (*SubObjectList)->Common.Type) &&

                    ((*SubObjectList)->Reference.Class ==
                        ACPI_REFCLASS_NAME))))
            {
                NameFound = TRUE;
            }
            else
            {


                SubObjectList++;
            }
        }

        TempSizeNeeded += (sizeof (ACPI_PCI_ROUTING_TABLE) - 4);



        if (NameFound)
        {
            if ((*SubObjectList)->Common.Type == ACPI_TYPE_STRING)
            {




                TempSizeNeeded += ((ACPI_SIZE)
                    (*SubObjectList)->String.Length + 1);
            }
            else
            {
                TempSizeNeeded += AcpiNsGetPathnameLength (
                    (*SubObjectList)->Reference.Node);
            }
        }
        else
        {




            TempSizeNeeded += sizeof (UINT32);
        }



        TempSizeNeeded = ACPI_ROUND_UP_TO_64BIT (TempSizeNeeded);



        TopObjectList++;
    }





    *BufferSizeNeeded = TempSizeNeeded + sizeof (ACPI_PCI_ROUTING_TABLE);
    return_ACPI_STATUS (AE_OK);
}
