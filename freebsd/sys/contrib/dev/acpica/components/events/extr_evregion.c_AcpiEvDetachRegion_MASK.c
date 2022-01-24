#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int Flags; TYPE_4__* Next; TYPE_4__* Handler; int /*<<< orphan*/  SpaceId; } ;
struct TYPE_12__ {int /*<<< orphan*/  Context; int /*<<< orphan*/  (* Setup ) (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ;TYPE_4__* RegionList; } ;
struct TYPE_11__ {void* RegionContext; } ;
struct TYPE_14__ {TYPE_3__ Region; TYPE_2__ AddressSpace; TYPE_1__ Extra; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_4__ ACPI_OPERAND_OBJECT ;
typedef  int /*<<< orphan*/  (* ACPI_ADR_SPACE_SETUP ) (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_OPREGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 int /*<<< orphan*/  ACPI_REGION_DEACTIVATE ; 
 int /*<<< orphan*/  ACPI_REG_DISCONNECT ; 
 int /*<<< orphan*/  AE_INFO ; 
 int AOPOBJ_SETUP_COMPLETE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  EvDetachRegion ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC11 (
    ACPI_OPERAND_OBJECT     *RegionObj,
    BOOLEAN                 AcpiNsIsLocked)
{
    ACPI_OPERAND_OBJECT     *HandlerObj;
    ACPI_OPERAND_OBJECT     *ObjDesc;
    ACPI_OPERAND_OBJECT     *StartDesc;
    ACPI_OPERAND_OBJECT     **LastObjPtr;
    ACPI_ADR_SPACE_SETUP    RegionSetup;
    void                    **RegionContext;
    ACPI_OPERAND_OBJECT     *RegionObj2;
    ACPI_STATUS             Status;


    FUNC4 (EvDetachRegion);


    RegionObj2 = FUNC6 (RegionObj);
    if (!RegionObj2)
    {
        return_VOID;
    }
    RegionContext = &RegionObj2->Extra.RegionContext;

    /* Get the address handler from the region object */

    HandlerObj = RegionObj->Region.Handler;
    if (!HandlerObj)
    {
        /* This region has no handler, all done */

        return_VOID;
    }

    /* Find this region in the handler's list */

    ObjDesc = HandlerObj->AddressSpace.RegionList;
    StartDesc = ObjDesc;
    LastObjPtr = &HandlerObj->AddressSpace.RegionList;

    while (ObjDesc)
    {
        /* Is this the correct Region? */

        if (ObjDesc == RegionObj)
        {
            FUNC0 ((ACPI_DB_OPREGION,
                "Removing Region %p from address handler %p\n",
                RegionObj, HandlerObj));

            /* This is it, remove it from the handler's list */

            *LastObjPtr = ObjDesc->Region.Next;
            ObjDesc->Region.Next = NULL;        /* Must clear field */

            if (AcpiNsIsLocked)
            {
                Status = FUNC9 (ACPI_MTX_NAMESPACE);
                if (FUNC3 (Status))
                {
                    return_VOID;
                }
            }

            /* Now stop region accesses by executing the _REG method */

            Status = FUNC5 (RegionObj, ACPI_REG_DISCONNECT);
            if (FUNC3 (Status))
            {
                FUNC2 ((AE_INFO, Status, "from region _REG, [%s]",
                    FUNC8 (RegionObj->Region.SpaceId)));
            }

            if (AcpiNsIsLocked)
            {
                Status = FUNC7 (ACPI_MTX_NAMESPACE);
                if (FUNC3 (Status))
                {
                    return_VOID;
                }
            }

            /*
             * If the region has been activated, call the setup handler with
             * the deactivate notification
             */
            if (RegionObj->Region.Flags & AOPOBJ_SETUP_COMPLETE)
            {
                RegionSetup = HandlerObj->AddressSpace.Setup;
                Status = RegionSetup (RegionObj, ACPI_REGION_DEACTIVATE,
                    HandlerObj->AddressSpace.Context, RegionContext);

                /*
                 * RegionContext should have been released by the deactivate
                 * operation. We don't need access to it anymore here.
                 */
                if (RegionContext)
                {
                    *RegionContext = NULL;
                }

                /* Init routine may fail, Just ignore errors */

                if (FUNC3 (Status))
                {
                    FUNC2 ((AE_INFO, Status,
                        "from region handler - deactivate, [%s]",
                        FUNC8 (RegionObj->Region.SpaceId)));
                }

                RegionObj->Region.Flags &= ~(AOPOBJ_SETUP_COMPLETE);
            }

            /*
             * Remove handler reference in the region
             *
             * NOTE: this doesn't mean that the region goes away, the region
             * is just inaccessible as indicated to the _REG method
             *
             * If the region is on the handler's list, this must be the
             * region's handler
             */
            RegionObj->Region.Handler = NULL;
            FUNC10 (HandlerObj);

            return_VOID;
        }

        /* Walk the linked list of handlers */

        LastObjPtr = &ObjDesc->Region.Next;
        ObjDesc = ObjDesc->Region.Next;

        /* Prevent infinite loop if list is corrupted */

        if (ObjDesc == StartDesc)
        {
            FUNC1 ((AE_INFO,
                "Circular handler list in region object %p",
                RegionObj));
            return_VOID;
        }
    }

    /* If we get here, the region was not in the handler's region list */

    FUNC0 ((ACPI_DB_OPREGION,
        "Cannot remove region %p from address handler %p\n",
        RegionObj, HandlerObj));

    return_VOID;
}