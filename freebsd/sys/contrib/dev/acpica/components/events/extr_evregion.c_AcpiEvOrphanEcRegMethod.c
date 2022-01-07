
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ Type; TYPE_2__* Object; } ;
struct TYPE_15__ {scalar_t__ Value; } ;
struct TYPE_17__ {TYPE_3__ Integer; void* Type; } ;
struct TYPE_16__ {int Count; TYPE_5__* Pointer; } ;
struct TYPE_13__ {scalar_t__ SpaceId; } ;
struct TYPE_14__ {TYPE_1__ Region; } ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_OBJECT_LIST ;
typedef TYPE_5__ ACPI_OBJECT ;
typedef TYPE_6__ ACPI_NAMESPACE_NODE ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_ADR_SPACE_EC ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_NAMESPACE ;
 scalar_t__ ACPI_REG_CONNECT ;
 void* ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_REGION ;
 int AcpiEvaluateObject (int ,int *,TYPE_4__*,int *) ;
 int AcpiGetHandle (TYPE_6__*,int ,int *) ;
 TYPE_6__* AcpiNsGetNextNode (TYPE_6__*,TYPE_6__*) ;
 int AcpiUtAcquireMutex (int ) ;
 int AcpiUtReleaseMutex (int ) ;
 int EvOrphanEcRegMethod ;
 int METHOD_NAME__REG ;
 int return_VOID ;

__attribute__((used)) static void
AcpiEvOrphanEcRegMethod (
    ACPI_NAMESPACE_NODE *EcDeviceNode)
{
    ACPI_HANDLE RegMethod;
    ACPI_NAMESPACE_NODE *NextNode;
    ACPI_STATUS Status;
    ACPI_OBJECT_LIST Args;
    ACPI_OBJECT Objects[2];


    ACPI_FUNCTION_TRACE (EvOrphanEcRegMethod);


    if (!EcDeviceNode)
    {
        return_VOID;
    }



    (void) AcpiUtReleaseMutex (ACPI_MTX_NAMESPACE);



    Status = AcpiGetHandle (EcDeviceNode, METHOD_NAME__REG, &RegMethod);
    if (ACPI_FAILURE (Status))
    {
        goto Exit;
    }
    NextNode = AcpiNsGetNextNode (EcDeviceNode, ((void*)0));
    while (NextNode)
    {
        if ((NextNode->Type == ACPI_TYPE_REGION) &&
            (NextNode->Object) &&
            (NextNode->Object->Region.SpaceId == ACPI_ADR_SPACE_EC))
        {
            goto Exit;
        }

        NextNode = AcpiNsGetNextNode (EcDeviceNode, NextNode);
    }



    Args.Count = 2;
    Args.Pointer = Objects;
    Objects[0].Type = ACPI_TYPE_INTEGER;
    Objects[0].Integer.Value = ACPI_ADR_SPACE_EC;
    Objects[1].Type = ACPI_TYPE_INTEGER;
    Objects[1].Integer.Value = ACPI_REG_CONNECT;

    (void) AcpiEvaluateObject (RegMethod, ((void*)0), &Args, ((void*)0));

Exit:


    (void) AcpiUtAcquireMutex (ACPI_MTX_NAMESPACE);
    return_VOID;
}
