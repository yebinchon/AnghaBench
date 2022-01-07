
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Integer; } ;
struct TYPE_7__ {TYPE_1__ Value; TYPE_3__* Next; TYPE_3__* Child; } ;
struct TYPE_8__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ASL_ERROR ;
 int ASL_MSG_SYNC_LEVEL ;
 int AslError (int ,int ,TYPE_3__*,int *) ;

__attribute__((used)) static void
OpnDoMutex (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Next;


    Next = Op->Asl.Child;
    Next = Next->Asl.Next;

    if (Next->Asl.Value.Integer > 15)
    {
        AslError (ASL_ERROR, ASL_MSG_SYNC_LEVEL, Next, ((void*)0));
    }
    return;
}
