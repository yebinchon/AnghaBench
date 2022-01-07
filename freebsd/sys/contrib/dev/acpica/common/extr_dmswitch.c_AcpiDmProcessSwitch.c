
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int AmlOpcode; int DisasmFlags; int DisasmOpcode; } ;
struct TYPE_10__ {int Name; } ;
struct TYPE_13__ {TYPE_2__ Common; TYPE_1__ Named; } ;
struct TYPE_12__ {struct TYPE_12__* Next; TYPE_4__* Op; } ;
typedef int BOOLEAN ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT_LIST ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;


 TYPE_3__* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_DASM_SWITCH ;
 int ACPI_FREE (TYPE_3__*) ;
 int ACPI_PARSEOP_IGNORE ;
 int AE_NO_MEMORY ;
 int AE_OK ;


 int AcpiDmIsSwitchBlock (TYPE_4__*,char**) ;
 TYPE_3__* AcpiGbl_TempListHead ;
 int FALSE ;
 int TRUE ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int strncmp (char*,char*,int) ;

ACPI_STATUS
AcpiDmProcessSwitch (
    ACPI_PARSE_OBJECT *Op)
{
    char *Temp = ((void*)0);
    ACPI_PARSE_OBJECT_LIST *NewTemp;
    ACPI_PARSE_OBJECT_LIST *Current;
    ACPI_PARSE_OBJECT_LIST *Previous;
    BOOLEAN FoundTemp = FALSE;


    switch (Op->Common.AmlOpcode)
    {
    case 129:

        Temp = (char *) (&Op->Named.Name);

        if (!strncmp(Temp, "_T_", 3))
        {


            NewTemp = ACPI_ALLOCATE_ZEROED (sizeof (ACPI_PARSE_OBJECT_LIST));
            if (!NewTemp)
            {
                return (AE_NO_MEMORY);
            }

            if (AcpiGbl_TempListHead)
            {
                Current = AcpiGbl_TempListHead;
                AcpiGbl_TempListHead = NewTemp;
                AcpiGbl_TempListHead->Op = Op;
                AcpiGbl_TempListHead->Next = Current;
            }
            else
            {
                AcpiGbl_TempListHead = NewTemp;
                AcpiGbl_TempListHead->Op = Op;
                AcpiGbl_TempListHead->Next = ((void*)0);
            }
        }
        break;

    case 128:

        if (!AcpiDmIsSwitchBlock (Op, &Temp))
        {
            break;
        }



        Op->Common.DisasmOpcode = ACPI_DASM_SWITCH;

        Previous = Current = AcpiGbl_TempListHead;
        while (Current)
        {


            if (!strncmp(Temp, (char *) (&Current->Op->Named.Name), 4))
            {


                Current->Op->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;



                if (Current == AcpiGbl_TempListHead)
                {
                    AcpiGbl_TempListHead = Current->Next;
                }
                else
                {
                    Previous->Next = Current->Next;
                }

                Current->Op = ((void*)0);
                Current->Next = ((void*)0);
                ACPI_FREE (Current);
                FoundTemp = TRUE;
                break;
            }

            Previous = Current;
            Current = Current->Next;
        }

        if (!FoundTemp)
        {
            fprintf (stderr,
                "Warning: Declaration for temp name %.4s not found\n", Temp);
        }
        break;

    default:
        break;
    }

    return (AE_OK);
}
