
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int Integer; } ;
struct TYPE_11__ {scalar_t__ ParseOpcode; TYPE_3__ Value; TYPE_5__* Next; TYPE_5__* Child; } ;
struct TYPE_8__ {scalar_t__ Integer; } ;
struct TYPE_9__ {TYPE_1__ Value; } ;
struct TYPE_12__ {TYPE_4__ Asl; TYPE_2__ Common; } ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;
typedef scalar_t__ ACPI_ADR_SPACE_TYPE ;


 scalar_t__ ACPI_NUM_PREDEFINED_REGIONS ;
 int ACPI_UINT64_MAX ;
 int ASL_ERROR ;
 int ASL_MSG_REGION_LENGTH ;
 int AslError (int ,int ,TYPE_5__*,int *) ;
 scalar_t__ PARSEOP_INTEGER ;

__attribute__((used)) static void
OpnDoRegion (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Next;
    ACPI_ADR_SPACE_TYPE SpaceId;





    Next = Op->Asl.Child;



    Next = Next->Asl.Next;
    SpaceId = (ACPI_ADR_SPACE_TYPE) Next->Common.Value.Integer;



    Next = Next->Asl.Next;



    Next = Next->Asl.Next;
    if (Next->Asl.ParseOpcode == PARSEOP_INTEGER)
    {


        Op->Asl.Value.Integer = Next->Asl.Value.Integer;
        if (!Op->Asl.Value.Integer && (SpaceId < ACPI_NUM_PREDEFINED_REGIONS))
        {
            AslError (ASL_ERROR, ASL_MSG_REGION_LENGTH, Op, ((void*)0));
        }
    }
    else
    {
        Op->Asl.Value.Integer = ACPI_UINT64_MAX;
    }
}
