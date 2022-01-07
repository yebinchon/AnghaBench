
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_13__ {int FullPathname; int ReturnFlags; } ;
struct TYPE_11__ {scalar_t__ Value; } ;
struct TYPE_10__ {scalar_t__ Count; TYPE_4__** Elements; } ;
struct TYPE_9__ {scalar_t__ Type; } ;
struct TYPE_12__ {TYPE_3__ Integer; TYPE_2__ Package; TYPE_1__ Common; } ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_OPERAND_OBJECT ;
typedef TYPE_5__ ACPI_EVALUATE_INFO ;


 int ACPI_DB_REPAIR ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_OBJECT_REPAIRED ;
 int ACPI_SORT_ASCENDING ;
 int ACPI_SORT_DESCENDING ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 scalar_t__ ACPI_UINT32_MAX ;
 int AE_AML_OPERAND_TYPE ;
 int AE_AML_PACKAGE_LIMIT ;
 int AE_OK ;
 int AcpiNsSortList (TYPE_4__**,scalar_t__,scalar_t__,int ) ;
 int NsCheckSortedList ;

__attribute__((used)) static ACPI_STATUS
AcpiNsCheckSortedList (
    ACPI_EVALUATE_INFO *Info,
    ACPI_OPERAND_OBJECT *ReturnObject,
    UINT32 StartIndex,
    UINT32 ExpectedCount,
    UINT32 SortIndex,
    UINT8 SortDirection,
    char *SortKeyName)
{
    UINT32 OuterElementCount;
    ACPI_OPERAND_OBJECT **OuterElements;
    ACPI_OPERAND_OBJECT **Elements;
    ACPI_OPERAND_OBJECT *ObjDesc;
    UINT32 i;
    UINT32 PreviousValue;


    ACPI_FUNCTION_NAME (NsCheckSortedList);




    if (ReturnObject->Common.Type != ACPI_TYPE_PACKAGE)
    {
        return (AE_AML_OPERAND_TYPE);
    }






    OuterElementCount = ReturnObject->Package.Count;
    if (!OuterElementCount || StartIndex >= OuterElementCount)
    {
        return (AE_AML_PACKAGE_LIMIT);
    }

    OuterElements = &ReturnObject->Package.Elements[StartIndex];
    OuterElementCount -= StartIndex;

    PreviousValue = 0;
    if (SortDirection == ACPI_SORT_DESCENDING)
    {
        PreviousValue = ACPI_UINT32_MAX;
    }



    for (i = 0; i < OuterElementCount; i++)
    {


        if ((*OuterElements)->Common.Type != ACPI_TYPE_PACKAGE)
        {
            return (AE_AML_OPERAND_TYPE);
        }



        if ((*OuterElements)->Package.Count < ExpectedCount)
        {
            return (AE_AML_PACKAGE_LIMIT);
        }

        Elements = (*OuterElements)->Package.Elements;
        ObjDesc = Elements[SortIndex];

        if (ObjDesc->Common.Type != ACPI_TYPE_INTEGER)
        {
            return (AE_AML_OPERAND_TYPE);
        }





        if (((SortDirection == ACPI_SORT_ASCENDING) &&
                (ObjDesc->Integer.Value < PreviousValue)) ||
            ((SortDirection == ACPI_SORT_DESCENDING) &&
                (ObjDesc->Integer.Value > PreviousValue)))
        {
            AcpiNsSortList (&ReturnObject->Package.Elements[StartIndex],
                OuterElementCount, SortIndex, SortDirection);

            Info->ReturnFlags |= ACPI_OBJECT_REPAIRED;

            ACPI_DEBUG_PRINT ((ACPI_DB_REPAIR,
                "%s: Repaired unsorted list - now sorted by %s\n",
                Info->FullPathname, SortKeyName));
            return (AE_OK);
        }

        PreviousValue = (UINT32) ObjDesc->Integer.Value;
        OuterElements++;
    }

    return (AE_OK);
}
