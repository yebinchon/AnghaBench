
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_26__ {int ReturnBtype; int ReturnFlags; int FullPathname; int Node; } ;
struct TYPE_23__ {int ReferenceCount; } ;
struct TYPE_25__ {TYPE_1__ Common; } ;
struct TYPE_24__ {int (* ObjectConverter ) (int ,TYPE_3__*,TYPE_3__**) ;} ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_SIMPLE_REPAIR_INFO ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef TYPE_4__ ACPI_EVALUATE_INFO ;


 int ACPI_DB_REPAIR ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_NOT_PACKAGE_ELEMENT ;
 int ACPI_OBJECT_REPAIRED ;
 int ACPI_OBJECT_WRAPPED ;
 int ACPI_RTYPE_BUFFER ;
 int ACPI_RTYPE_INTEGER ;
 int ACPI_RTYPE_NONE ;
 int ACPI_RTYPE_PACKAGE ;
 int ACPI_RTYPE_STRING ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_WARN_ALWAYS ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_AML_NO_RETURN_VALUE ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiNsConvertToBuffer (TYPE_3__*,TYPE_3__**) ;
 int AcpiNsConvertToInteger (TYPE_3__*,TYPE_3__**) ;
 int AcpiNsConvertToString (TYPE_3__*,TYPE_3__**) ;
 TYPE_2__* AcpiNsMatchSimpleRepair (int ,int,int) ;
 int AcpiNsRepairNullElement (TYPE_4__*,int,int,TYPE_3__**) ;
 int AcpiNsWrapWithPackage (TYPE_4__*,TYPE_3__*,TYPE_3__**) ;
 int AcpiUtGetObjectTypeName (TYPE_3__*) ;
 int AcpiUtRemoveReference (TYPE_3__*) ;
 int NsSimpleRepair ;
 int stub1 (int ,TYPE_3__*,TYPE_3__**) ;

ACPI_STATUS
AcpiNsSimpleRepair (
    ACPI_EVALUATE_INFO *Info,
    UINT32 ExpectedBtypes,
    UINT32 PackageIndex,
    ACPI_OPERAND_OBJECT **ReturnObjectPtr)
{
    ACPI_OPERAND_OBJECT *ReturnObject = *ReturnObjectPtr;
    ACPI_OPERAND_OBJECT *NewObject = ((void*)0);
    ACPI_STATUS Status;
    const ACPI_SIMPLE_REPAIR_INFO *Predefined;


    ACPI_FUNCTION_NAME (NsSimpleRepair);






    Predefined = AcpiNsMatchSimpleRepair (Info->Node,
        Info->ReturnBtype, PackageIndex);
    if (Predefined)
    {
        if (!ReturnObject)
        {
            ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname,
                ACPI_WARN_ALWAYS, "Missing expected return value"));
        }

        Status = Predefined->ObjectConverter (Info->Node, ReturnObject,
            &NewObject);
        if (ACPI_FAILURE (Status))
        {


            ACPI_EXCEPTION ((AE_INFO, Status,
                "During return object analysis"));
            return (Status);
        }
        if (NewObject)
        {
            goto ObjectRepaired;
        }
    }





    if (Info->ReturnBtype & ExpectedBtypes)
    {
        return (AE_OK);
    }
    if (!ReturnObject)
    {
        if (ExpectedBtypes && (!(ExpectedBtypes & ACPI_RTYPE_NONE)))
        {
            if (PackageIndex != ACPI_NOT_PACKAGE_ELEMENT)
            {
                ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname,
                    ACPI_WARN_ALWAYS, "Found unexpected NULL package element"));

                Status = AcpiNsRepairNullElement (Info, ExpectedBtypes,
                    PackageIndex, ReturnObjectPtr);
                if (ACPI_SUCCESS (Status))
                {
                    return (AE_OK);
                }
            }
            else
            {
                ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname,
                    ACPI_WARN_ALWAYS, "Missing expected return value"));
            }

            return (AE_AML_NO_RETURN_VALUE);
        }
    }

    if (ExpectedBtypes & ACPI_RTYPE_INTEGER)
    {
        Status = AcpiNsConvertToInteger (ReturnObject, &NewObject);
        if (ACPI_SUCCESS (Status))
        {
            goto ObjectRepaired;
        }
    }
    if (ExpectedBtypes & ACPI_RTYPE_STRING)
    {
        Status = AcpiNsConvertToString (ReturnObject, &NewObject);
        if (ACPI_SUCCESS (Status))
        {
            goto ObjectRepaired;
        }
    }
    if (ExpectedBtypes & ACPI_RTYPE_BUFFER)
    {
        Status = AcpiNsConvertToBuffer (ReturnObject, &NewObject);
        if (ACPI_SUCCESS (Status))
        {
            goto ObjectRepaired;
        }
    }
    if (ExpectedBtypes & ACPI_RTYPE_PACKAGE)
    {
        Status = AcpiNsWrapWithPackage (Info, ReturnObject, &NewObject);
        if (ACPI_SUCCESS (Status))
        {




            *ReturnObjectPtr = NewObject;
            Info->ReturnFlags |= ACPI_OBJECT_REPAIRED;
            return (AE_OK);
        }
    }



    return (AE_AML_OPERAND_TYPE);


ObjectRepaired:



    if (PackageIndex != ACPI_NOT_PACKAGE_ELEMENT)
    {


        if (!(Info->ReturnFlags & ACPI_OBJECT_WRAPPED))
        {
            NewObject->Common.ReferenceCount =
                ReturnObject->Common.ReferenceCount;
        }

        ACPI_DEBUG_PRINT ((ACPI_DB_REPAIR,
            "%s: Converted %s to expected %s at Package index %u\n",
            Info->FullPathname, AcpiUtGetObjectTypeName (ReturnObject),
            AcpiUtGetObjectTypeName (NewObject), PackageIndex));
    }
    else
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_REPAIR,
            "%s: Converted %s to expected %s\n",
            Info->FullPathname, AcpiUtGetObjectTypeName (ReturnObject),
            AcpiUtGetObjectTypeName (NewObject)));
    }



    AcpiUtRemoveReference (ReturnObject);
    *ReturnObjectPtr = NewObject;
    Info->ReturnFlags |= ACPI_OBJECT_REPAIRED;
    return (AE_OK);
}
