
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int UINT64 ;
typedef scalar_t__ UINT32 ;
struct TYPE_19__ {int AccessLength; int Length; int Connection; } ;
struct TYPE_17__ {scalar_t__ (* Setup ) (TYPE_5__*,int ,TYPE_6__*,void**) ;scalar_t__ (* Handler ) (scalar_t__,scalar_t__,scalar_t__,int *,TYPE_6__*,void*) ;int HandlerFlags; TYPE_6__* Context; } ;
struct TYPE_16__ {scalar_t__ SpaceId; int Flags; TYPE_5__* Handler; scalar_t__ Address; int Node; } ;
struct TYPE_15__ {void* RegionContext; } ;
struct TYPE_14__ {scalar_t__ BitLength; scalar_t__ PinNumberIndex; int AccessLength; int ResourceLength; int ResourceBuffer; } ;
struct TYPE_18__ {TYPE_4__ AddressSpace; TYPE_3__ Region; TYPE_2__ Extra; TYPE_1__ Field; } ;
typedef scalar_t__ ACPI_STATUS ;
typedef scalar_t__ ACPI_PHYSICAL_ADDRESS ;
typedef TYPE_5__ ACPI_OPERAND_OBJECT ;
typedef TYPE_6__ ACPI_CONNECTION_INFO ;
typedef scalar_t__ (* ACPI_ADR_SPACE_SETUP ) (TYPE_5__*,int ,TYPE_6__*,void**) ;
typedef scalar_t__ (* ACPI_ADR_SPACE_HANDLER ) (scalar_t__,scalar_t__,scalar_t__,int *,TYPE_6__*,void*) ;


 int ACPI_ADDR_HANDLER_DEFAULT_INSTALLED ;
 scalar_t__ ACPI_ADR_SPACE_EC ;
 scalar_t__ ACPI_ADR_SPACE_GPIO ;
 scalar_t__ ACPI_ADR_SPACE_GSBUS ;
 int ACPI_DB_OPREGION ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FORMAT_UINT64 (scalar_t__) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REGION_ACTIVATE ;
 int AE_INFO ;
 scalar_t__ AE_NOT_EXIST ;
 scalar_t__ AE_TIME ;
 int AOPOBJ_SETUP_COMPLETE ;
 int AcpiExEnterInterpreter () ;
 int AcpiExExitInterpreter () ;
 TYPE_5__* AcpiNsGetSecondaryObject (TYPE_5__*) ;
 int AcpiUtGetNodeName (int ) ;
 int AcpiUtGetRegionName (scalar_t__) ;
 int EvAddressSpaceDispatch ;
 int return_ACPI_STATUS (scalar_t__) ;

ACPI_STATUS
AcpiEvAddressSpaceDispatch (
    ACPI_OPERAND_OBJECT *RegionObj,
    ACPI_OPERAND_OBJECT *FieldObj,
    UINT32 Function,
    UINT32 RegionOffset,
    UINT32 BitWidth,
    UINT64 *Value)
{
    ACPI_STATUS Status;
    ACPI_ADR_SPACE_HANDLER Handler;
    ACPI_ADR_SPACE_SETUP RegionSetup;
    ACPI_OPERAND_OBJECT *HandlerDesc;
    ACPI_OPERAND_OBJECT *RegionObj2;
    void *RegionContext = ((void*)0);
    ACPI_CONNECTION_INFO *Context;
    ACPI_PHYSICAL_ADDRESS Address;


    ACPI_FUNCTION_TRACE (EvAddressSpaceDispatch);


    RegionObj2 = AcpiNsGetSecondaryObject (RegionObj);
    if (!RegionObj2)
    {
        return_ACPI_STATUS (AE_NOT_EXIST);
    }



    HandlerDesc = RegionObj->Region.Handler;
    if (!HandlerDesc)
    {
        ACPI_ERROR ((AE_INFO,
            "No handler for Region [%4.4s] (%p) [%s]",
            AcpiUtGetNodeName (RegionObj->Region.Node),
            RegionObj, AcpiUtGetRegionName (RegionObj->Region.SpaceId)));

        return_ACPI_STATUS (AE_NOT_EXIST);
    }

    Context = HandlerDesc->AddressSpace.Context;





    if (!(RegionObj->Region.Flags & AOPOBJ_SETUP_COMPLETE))
    {


        RegionSetup = HandlerDesc->AddressSpace.Setup;
        if (!RegionSetup)
        {


            ACPI_ERROR ((AE_INFO,
                "No init routine for region(%p) [%s]",
                RegionObj, AcpiUtGetRegionName (RegionObj->Region.SpaceId)));
            return_ACPI_STATUS (AE_NOT_EXIST);
        }






        AcpiExExitInterpreter ();

        Status = RegionSetup (RegionObj, ACPI_REGION_ACTIVATE,
            Context, &RegionContext);



        AcpiExEnterInterpreter ();



        if (ACPI_FAILURE (Status))
        {
            ACPI_EXCEPTION ((AE_INFO, Status,
                "During region initialization: [%s]",
                AcpiUtGetRegionName (RegionObj->Region.SpaceId)));
            return_ACPI_STATUS (Status);
        }



        if (!(RegionObj->Region.Flags & AOPOBJ_SETUP_COMPLETE))
        {
            RegionObj->Region.Flags |= AOPOBJ_SETUP_COMPLETE;





            if (!(RegionObj2->Extra.RegionContext))
            {
                RegionObj2->Extra.RegionContext = RegionContext;
            }
        }
    }



    Handler = HandlerDesc->AddressSpace.Handler;
    Address = (RegionObj->Region.Address + RegionOffset);
    if ((RegionObj->Region.SpaceId == ACPI_ADR_SPACE_GSBUS) &&
        Context &&
        FieldObj)
    {


        Context->Connection = FieldObj->Field.ResourceBuffer;
        Context->Length = FieldObj->Field.ResourceLength;
        Context->AccessLength = FieldObj->Field.AccessLength;
    }
    if ((RegionObj->Region.SpaceId == ACPI_ADR_SPACE_GPIO) &&
        Context &&
        FieldObj)
    {


        Context->Connection = FieldObj->Field.ResourceBuffer;
        Context->Length = FieldObj->Field.ResourceLength;
        Context->AccessLength = FieldObj->Field.AccessLength;
        Address = FieldObj->Field.PinNumberIndex;
        BitWidth = FieldObj->Field.BitLength;
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_OPREGION,
        "Handler %p (@%p) Address %8.8X%8.8X [%s]\n",
        &RegionObj->Region.Handler->AddressSpace, Handler,
        ACPI_FORMAT_UINT64 (Address),
        AcpiUtGetRegionName (RegionObj->Region.SpaceId)));

    if (!(HandlerDesc->AddressSpace.HandlerFlags &
        ACPI_ADDR_HANDLER_DEFAULT_INSTALLED))
    {





        AcpiExExitInterpreter();
    }



    Status = Handler (Function, Address, BitWidth, Value, Context,
        RegionObj2->Extra.RegionContext);

    if (ACPI_FAILURE (Status))
    {
        ACPI_EXCEPTION ((AE_INFO, Status, "Returned by Handler for [%s]",
            AcpiUtGetRegionName (RegionObj->Region.SpaceId)));





        if ((RegionObj->Region.SpaceId == ACPI_ADR_SPACE_EC) &&
            (Status == AE_TIME))
        {
            ACPI_ERROR ((AE_INFO,
                "Timeout from EC hardware or EC device driver"));
        }
    }

    if (!(HandlerDesc->AddressSpace.HandlerFlags &
        ACPI_ADDR_HANDLER_DEFAULT_INSTALLED))
    {




        AcpiExEnterInterpreter ();
    }

    return_ACPI_STATUS (Status);
}
