
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Type; } ;
struct TYPE_6__ {int * WalkState; scalar_t__ Level; scalar_t__ Flags; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;
typedef int ACPI_OWNER_ID ;
typedef TYPE_1__ ACPI_OP_WALK_INFO ;
typedef TYPE_2__ ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (int *) ;
 int AcpiDmCommonAscendingOp ;
 int AcpiDmLoadDescendingOp ;
 int AcpiDmWalkParseTree (int *,int ,int ,TYPE_1__*) ;
 int * AcpiDsCreateWalkState (int ,int *,int *,int *) ;
 int AcpiDsScopeStackPush (TYPE_2__*,int ,int *) ;

void
AcpiDmFinishNamespaceLoad (
    ACPI_PARSE_OBJECT *ParseTreeRoot,
    ACPI_NAMESPACE_NODE *NamespaceRoot,
    ACPI_OWNER_ID OwnerId)
{
    ACPI_STATUS Status;
    ACPI_OP_WALK_INFO Info;
    ACPI_WALK_STATE *WalkState;


    if (!ParseTreeRoot)
    {
        return;
    }



    WalkState = AcpiDsCreateWalkState (OwnerId, ParseTreeRoot, ((void*)0), ((void*)0));
    if (!WalkState)
    {
        return;
    }

    Status = AcpiDsScopeStackPush (NamespaceRoot, NamespaceRoot->Type,
        WalkState);
    if (ACPI_FAILURE (Status))
    {
        return;
    }

    Info.Flags = 0;
    Info.Level = 0;
    Info.WalkState = WalkState;

    AcpiDmWalkParseTree (ParseTreeRoot, AcpiDmLoadDescendingOp,
        AcpiDmCommonAscendingOp, &Info);
    ACPI_FREE (WalkState);
}
