
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_20__ {scalar_t__ Type; } ;
struct TYPE_18__ {scalar_t__ SpaceId; } ;
struct TYPE_17__ {scalar_t__ SpaceId; } ;
struct TYPE_16__ {int Handler; } ;
struct TYPE_15__ {scalar_t__ Type; } ;
struct TYPE_19__ {TYPE_4__ AddressSpace; TYPE_3__ Region; TYPE_2__ CommonNotify; TYPE_1__ Common; } ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_OPERAND_OBJECT ;
typedef TYPE_6__ ACPI_NAMESPACE_NODE ;
typedef int ACPI_HANDLE ;


 int ACPI_DB_OPREGION ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 scalar_t__ ACPI_TYPE_DEVICE ;
 scalar_t__ ACPI_TYPE_REGION ;
 int AE_BAD_PARAMETER ;
 int AE_CTRL_DEPTH ;
 int AE_OK ;
 int AcpiEvAttachRegion (TYPE_5__*,TYPE_5__*,int ) ;
 int AcpiEvDetachRegion (TYPE_5__*,int ) ;
 TYPE_5__* AcpiEvFindRegionHandler (scalar_t__,int ) ;
 TYPE_6__* AcpiGbl_RootNode ;
 TYPE_5__* AcpiNsGetAttachedObject (TYPE_6__*) ;
 TYPE_6__* AcpiNsValidateHandle (int ) ;
 int AcpiUtGetRegionName (scalar_t__) ;
 int EvInstallHandler ;
 int FALSE ;

__attribute__((used)) static ACPI_STATUS
AcpiEvInstallHandler (
    ACPI_HANDLE ObjHandle,
    UINT32 Level,
    void *Context,
    void **ReturnValue)
{
    ACPI_OPERAND_OBJECT *HandlerObj;
    ACPI_OPERAND_OBJECT *NextHandlerObj;
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_STATUS Status;


    ACPI_FUNCTION_NAME (EvInstallHandler);


    HandlerObj = (ACPI_OPERAND_OBJECT *) Context;



    if (!HandlerObj)
    {
        return (AE_OK);
    }



    Node = AcpiNsValidateHandle (ObjHandle);
    if (!Node)
    {
        return (AE_BAD_PARAMETER);
    }





    if ((Node->Type != ACPI_TYPE_DEVICE) &&
        (Node->Type != ACPI_TYPE_REGION) &&
        (Node != AcpiGbl_RootNode))
    {
        return (AE_OK);
    }



    ObjDesc = AcpiNsGetAttachedObject (Node);
    if (!ObjDesc)
    {


        return (AE_OK);
    }



    if (ObjDesc->Common.Type == ACPI_TYPE_DEVICE)
    {


        NextHandlerObj = AcpiEvFindRegionHandler (
            HandlerObj->AddressSpace.SpaceId, ObjDesc->CommonNotify.Handler);
        if (NextHandlerObj)
        {


            ACPI_DEBUG_PRINT ((ACPI_DB_OPREGION,
                "Found handler for region [%s] in device %p(%p) handler %p\n",
                AcpiUtGetRegionName (HandlerObj->AddressSpace.SpaceId),
                ObjDesc, NextHandlerObj, HandlerObj));
            return (AE_CTRL_DEPTH);
        }





        return (AE_OK);
    }



    if (ObjDesc->Region.SpaceId != HandlerObj->AddressSpace.SpaceId)
    {


        return (AE_OK);
    }






    AcpiEvDetachRegion (ObjDesc, FALSE);



    Status = AcpiEvAttachRegion (HandlerObj, ObjDesc, FALSE);
    return (Status);
}
