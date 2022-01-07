
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_5__ {char* NameSeg; scalar_t__ ParseOpcode; TYPE_2__* Next; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_COMPARE_NAMESEG (char*,char*) ;
 int ACPI_MOVE_32_TO_32 (char*,char*) ;
 int ACPI_NAMESEG_SIZE ;
 scalar_t__ ACPI_UINT32_MAX ;
 int ASL_ERROR ;
 int ASL_MSG_GPE_NAME_CONFLICT ;
 int AslError (int ,int ,TYPE_2__*,char*) ;
 scalar_t__ PARSEOP_METHOD ;
 scalar_t__ PARSEOP_NAME ;
 scalar_t__ strtoul (char*,int *,int) ;

void
ApCheckForGpeNameConflict (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *NextOp;
    UINT32 GpeNumber;
    char Name[ACPI_NAMESEG_SIZE + 1];
    char Target[ACPI_NAMESEG_SIZE];




    ACPI_MOVE_32_TO_32 (Name, Op->Asl.NameSeg);
    Name[ACPI_NAMESEG_SIZE] = 0;







    if ((Name[0] != '_') ||
       ((Name[1] != 'L') && (Name[1] != 'E')))
    {
        return;
    }



    GpeNumber = strtoul (&Name[2], ((void*)0), 16);
    if (GpeNumber == ACPI_UINT32_MAX)
    {
        return;
    }





    ACPI_MOVE_32_TO_32 (Target, Name);



    if (Name[1] == 'L')
    {
        Target[1] = 'E';
    }
    else
    {
        Target[1] = 'L';
    }



    NextOp = Op->Asl.Next;
    while (NextOp)
    {





        if ((NextOp->Asl.ParseOpcode == PARSEOP_METHOD) ||
            (NextOp->Asl.ParseOpcode == PARSEOP_NAME))
        {
            if (ACPI_COMPARE_NAMESEG (Target, NextOp->Asl.NameSeg))
            {


                AslError (ASL_ERROR, ASL_MSG_GPE_NAME_CONFLICT, NextOp,
                    Name);
                return;
            }
        }

        NextOp = NextOp->Asl.Next;
    }



    return;
}
