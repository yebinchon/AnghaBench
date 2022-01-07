
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
struct TYPE_6__ {scalar_t__ Value; } ;
struct TYPE_5__ {TYPE_3__** Elements; } ;
struct TYPE_7__ {TYPE_2__ Integer; TYPE_1__ Package; } ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_SORT_ASCENDING ;
 scalar_t__ ACPI_SORT_DESCENDING ;

__attribute__((used)) static void
AcpiNsSortList (
    ACPI_OPERAND_OBJECT **Elements,
    UINT32 Count,
    UINT32 Index,
    UINT8 SortDirection)
{
    ACPI_OPERAND_OBJECT *ObjDesc1;
    ACPI_OPERAND_OBJECT *ObjDesc2;
    ACPI_OPERAND_OBJECT *TempObj;
    UINT32 i;
    UINT32 j;




    for (i = 1; i < Count; i++)
    {
        for (j = (Count - 1); j >= i; j--)
        {
            ObjDesc1 = Elements[j-1]->Package.Elements[Index];
            ObjDesc2 = Elements[j]->Package.Elements[Index];

            if (((SortDirection == ACPI_SORT_ASCENDING) &&
                    (ObjDesc1->Integer.Value > ObjDesc2->Integer.Value)) ||

                ((SortDirection == ACPI_SORT_DESCENDING) &&
                    (ObjDesc1->Integer.Value < ObjDesc2->Integer.Value)))
            {
                TempObj = Elements[j-1];
                Elements[j-1] = Elements[j];
                Elements[j] = TempObj;
            }
        }
    }
}
