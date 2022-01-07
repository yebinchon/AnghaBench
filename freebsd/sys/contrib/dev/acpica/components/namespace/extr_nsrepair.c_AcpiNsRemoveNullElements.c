
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_8__ {int FullPathname; } ;
struct TYPE_6__ {scalar_t__ Count; TYPE_2__** Elements; } ;
struct TYPE_7__ {TYPE_1__ Package; } ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef TYPE_3__ ACPI_EVALUATE_INFO ;


 int ACPI_DB_REPAIR ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int NsRemoveNullElements ;

void
AcpiNsRemoveNullElements (
    ACPI_EVALUATE_INFO *Info,
    UINT8 PackageType,
    ACPI_OPERAND_OBJECT *ObjDesc)
{
    ACPI_OPERAND_OBJECT **Source;
    ACPI_OPERAND_OBJECT **Dest;
    UINT32 Count;
    UINT32 NewCount;
    UINT32 i;


    ACPI_FUNCTION_NAME (NsRemoveNullElements);







    switch (PackageType)
    {
    case 136:
    case 135:
    case 134:
    case 130:
    case 133:
    case 131:
    case 129:
    case 132:
        break;

    default:
    case 128:
    case 138:
    case 137:
        return;
    }

    Count = ObjDesc->Package.Count;
    NewCount = Count;

    Source = ObjDesc->Package.Elements;
    Dest = Source;



    for (i = 0; i < Count; i++)
    {
        if (!*Source)
        {
            NewCount--;
        }
        else
        {
            *Dest = *Source;
            Dest++;
        }

        Source++;
    }



    if (NewCount < Count)
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_REPAIR,
            "%s: Found and removed %u NULL elements\n",
            Info->FullPathname, (Count - NewCount)));



        *Dest = ((void*)0);
        ObjDesc->Package.Count = NewCount;
    }
}
