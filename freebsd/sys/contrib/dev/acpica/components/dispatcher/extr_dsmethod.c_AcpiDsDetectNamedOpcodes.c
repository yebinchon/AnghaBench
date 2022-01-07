
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int Opcode; TYPE_3__* OpInfo; TYPE_2__* MethodNode; TYPE_4__* MethodDesc; } ;
struct TYPE_13__ {int InfoFlags; scalar_t__ SyncLevel; } ;
struct TYPE_12__ {TYPE_5__ Method; } ;
struct TYPE_11__ {int Flags; int Name; } ;
struct TYPE_9__ {int Ascii; } ;
struct TYPE_10__ {TYPE_1__ Name; } ;
typedef TYPE_6__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int (*) (TYPE_6__*,int **)) ;
 int ACPI_METHOD_IGNORE_SYNC_LEVEL ;
 int ACPI_METHOD_SERIALIZED ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 int AML_CREATE ;
 int AML_FIELD ;
 int AML_NAMED ;

__attribute__((used)) static ACPI_STATUS
AcpiDsDetectNamedOpcodes (
    ACPI_WALK_STATE *WalkState,
    ACPI_PARSE_OBJECT **OutOp)
{

    ACPI_FUNCTION_NAME (AcpiDsDetectNamedOpcodes);




    if (!(WalkState->OpInfo->Flags & (AML_NAMED | AML_CREATE | AML_FIELD)))
    {
        return (AE_OK);
    }
    WalkState->MethodDesc->Method.SyncLevel = 0;
    WalkState->MethodDesc->Method.InfoFlags |=
        (ACPI_METHOD_SERIALIZED | ACPI_METHOD_IGNORE_SYNC_LEVEL);

    ACPI_DEBUG_PRINT ((ACPI_DB_INFO,
        "Method serialized [%4.4s] %p - [%s] (%4.4X)\n",
        WalkState->MethodNode->Name.Ascii, WalkState->MethodNode,
        WalkState->OpInfo->Name, WalkState->Opcode));



    return (AE_CTRL_TERMINATE);
}
