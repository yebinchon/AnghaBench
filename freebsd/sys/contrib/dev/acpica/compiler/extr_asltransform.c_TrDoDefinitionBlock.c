
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_6__ {int String; } ;
struct TYPE_7__ {TYPE_1__ Value; TYPE_3__* Next; TYPE_3__* Child; } ;
struct TYPE_8__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ACPI_COMPARE_NAMESEG (int ,int ) ;
 int ACPI_SIG_DSDT ;
 int * AslGbl_ExternalsListHead ;
 TYPE_3__* AslGbl_FirstLevelInsertionNode ;
 int AslGbl_ReferenceOptimizationFlag ;
 int FALSE ;

__attribute__((used)) static void
TrDoDefinitionBlock (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Next;
    UINT32 i;




    AslGbl_ExternalsListHead = ((void*)0);

    Next = Op->Asl.Child;
    for (i = 0; i < 5; i++)
    {
        Next = Next->Asl.Next;
        if (i == 0)
        {





            if (!ACPI_COMPARE_NAMESEG (Next->Asl.Value.String, ACPI_SIG_DSDT))
            {
                AslGbl_ReferenceOptimizationFlag = FALSE;
            }
        }
    }

    AslGbl_FirstLevelInsertionNode = Next;
}
