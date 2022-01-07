
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int Flags; TYPE_4__* Next; TYPE_4__* Handler; int SpaceId; } ;
struct TYPE_12__ {int Context; int (* Setup ) (TYPE_4__*,int ,int ,void**) ;TYPE_4__* RegionList; } ;
struct TYPE_11__ {void* RegionContext; } ;
struct TYPE_14__ {TYPE_3__ Region; TYPE_2__ AddressSpace; TYPE_1__ Extra; } ;
typedef scalar_t__ BOOLEAN ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_OPERAND_OBJECT ;
typedef int (* ACPI_ADR_SPACE_SETUP ) (TYPE_4__*,int ,int ,void**) ;


 int ACPI_DB_OPREGION ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_NAMESPACE ;
 int ACPI_REGION_DEACTIVATE ;
 int ACPI_REG_DISCONNECT ;
 int AE_INFO ;
 int AOPOBJ_SETUP_COMPLETE ;
 int AcpiEvExecuteRegMethod (TYPE_4__*,int ) ;
 TYPE_4__* AcpiNsGetSecondaryObject (TYPE_4__*) ;
 int AcpiUtAcquireMutex (int ) ;
 int AcpiUtGetRegionName (int ) ;
 int AcpiUtReleaseMutex (int ) ;
 int AcpiUtRemoveReference (TYPE_4__*) ;
 int EvDetachRegion ;
 int return_VOID ;

void
AcpiEvDetachRegion (
    ACPI_OPERAND_OBJECT *RegionObj,
    BOOLEAN AcpiNsIsLocked)
{
    ACPI_OPERAND_OBJECT *HandlerObj;
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_OPERAND_OBJECT *StartDesc;
    ACPI_OPERAND_OBJECT **LastObjPtr;
    ACPI_ADR_SPACE_SETUP RegionSetup;
    void **RegionContext;
    ACPI_OPERAND_OBJECT *RegionObj2;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (EvDetachRegion);


    RegionObj2 = AcpiNsGetSecondaryObject (RegionObj);
    if (!RegionObj2)
    {
        return_VOID;
    }
    RegionContext = &RegionObj2->Extra.RegionContext;



    HandlerObj = RegionObj->Region.Handler;
    if (!HandlerObj)
    {


        return_VOID;
    }



    ObjDesc = HandlerObj->AddressSpace.RegionList;
    StartDesc = ObjDesc;
    LastObjPtr = &HandlerObj->AddressSpace.RegionList;

    while (ObjDesc)
    {


        if (ObjDesc == RegionObj)
        {
            ACPI_DEBUG_PRINT ((ACPI_DB_OPREGION,
                "Removing Region %p from address handler %p\n",
                RegionObj, HandlerObj));



            *LastObjPtr = ObjDesc->Region.Next;
            ObjDesc->Region.Next = ((void*)0);

            if (AcpiNsIsLocked)
            {
                Status = AcpiUtReleaseMutex (ACPI_MTX_NAMESPACE);
                if (ACPI_FAILURE (Status))
                {
                    return_VOID;
                }
            }



            Status = AcpiEvExecuteRegMethod (RegionObj, ACPI_REG_DISCONNECT);
            if (ACPI_FAILURE (Status))
            {
                ACPI_EXCEPTION ((AE_INFO, Status, "from region _REG, [%s]",
                    AcpiUtGetRegionName (RegionObj->Region.SpaceId)));
            }

            if (AcpiNsIsLocked)
            {
                Status = AcpiUtAcquireMutex (ACPI_MTX_NAMESPACE);
                if (ACPI_FAILURE (Status))
                {
                    return_VOID;
                }
            }





            if (RegionObj->Region.Flags & AOPOBJ_SETUP_COMPLETE)
            {
                RegionSetup = HandlerObj->AddressSpace.Setup;
                Status = RegionSetup (RegionObj, ACPI_REGION_DEACTIVATE,
                    HandlerObj->AddressSpace.Context, RegionContext);





                if (RegionContext)
                {
                    *RegionContext = ((void*)0);
                }



                if (ACPI_FAILURE (Status))
                {
                    ACPI_EXCEPTION ((AE_INFO, Status,
                        "from region handler - deactivate, [%s]",
                        AcpiUtGetRegionName (RegionObj->Region.SpaceId)));
                }

                RegionObj->Region.Flags &= ~(AOPOBJ_SETUP_COMPLETE);
            }
            RegionObj->Region.Handler = ((void*)0);
            AcpiUtRemoveReference (HandlerObj);

            return_VOID;
        }



        LastObjPtr = &ObjDesc->Region.Next;
        ObjDesc = ObjDesc->Region.Next;



        if (ObjDesc == StartDesc)
        {
            ACPI_ERROR ((AE_INFO,
                "Circular handler list in region object %p",
                RegionObj));
            return_VOID;
        }
    }



    ACPI_DEBUG_PRINT ((ACPI_DB_OPREGION,
        "Cannot remove region %p from address handler %p\n",
        RegionObj, HandlerObj));

    return_VOID;
}
