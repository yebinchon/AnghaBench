
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_34__ {int NodeFlags; int FullPathname; TYPE_7__* Predefined; } ;
struct TYPE_30__ {int Length; } ;
struct TYPE_29__ {size_t Count; TYPE_8__** Elements; } ;
struct TYPE_28__ {int Type; } ;
struct TYPE_27__ {int Value; } ;
struct TYPE_33__ {TYPE_5__ Buffer; TYPE_4__ Package; TYPE_3__ Common; TYPE_2__ Integer; } ;
struct TYPE_31__ {int Type; size_t Count1; size_t Count2; int ObjectType2; int ObjectType1; } ;
struct TYPE_26__ {size_t Count; int TailObjectType; int * ObjectType; } ;
struct TYPE_32__ {TYPE_6__ RetInfo; TYPE_1__ RetInfo3; } ;
typedef int ACPI_STATUS ;
typedef TYPE_7__ ACPI_PREDEFINED_INFO ;
typedef TYPE_8__ ACPI_OPERAND_OBJECT ;
typedef TYPE_9__ ACPI_EVALUATE_INFO ;


 int ACPI_DB_NAMES ;
 int ACPI_DB_REPAIR ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_RTYPE_INTEGER ;
 int ACPI_TYPE_PACKAGE ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_AML_INTERNAL ;
 int AE_AML_OPERAND_VALUE ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiNsCheckObjectType (TYPE_9__*,TYPE_8__**,int ,size_t) ;
 int AcpiNsCheckPackageElements (TYPE_9__*,TYPE_8__**,int ,size_t,int ,size_t,int ) ;
 int AcpiNsCheckPackageList (TYPE_9__*,TYPE_7__ const*,TYPE_8__**,size_t) ;
 int AcpiNsCustomPackage (TYPE_9__*,TYPE_8__**,size_t) ;
 int AcpiNsRemoveNullElements (TYPE_9__*,int,TYPE_8__*) ;
 int AcpiNsWrapWithPackage (TYPE_9__*,TYPE_8__*,TYPE_8__**) ;
 int NsCheckPackage ;

ACPI_STATUS
AcpiNsCheckPackage (
    ACPI_EVALUATE_INFO *Info,
    ACPI_OPERAND_OBJECT **ReturnObjectPtr)
{
    ACPI_OPERAND_OBJECT *ReturnObject = *ReturnObjectPtr;
    const ACPI_PREDEFINED_INFO *Package;
    ACPI_OPERAND_OBJECT **Elements;
    ACPI_STATUS Status = AE_OK;
    UINT32 ExpectedCount;
    UINT32 Count;
    UINT32 i;


    ACPI_FUNCTION_NAME (NsCheckPackage);




    Package = Info->Predefined + 1;

    ACPI_DEBUG_PRINT ((ACPI_DB_NAMES,
        "%s Validating return Package of Type %X, Count %X\n",
        Info->FullPathname, Package->RetInfo.Type,
        ReturnObject->Package.Count));





    AcpiNsRemoveNullElements (Info, Package->RetInfo.Type, ReturnObject);



    Elements = ReturnObject->Package.Elements;
    Count = ReturnObject->Package.Count;





    if (!Count)
    {
        if (Package->RetInfo.Type == 138)
        {
            return (AE_OK);
        }

        ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname, Info->NodeFlags,
            "Return Package has no elements (empty)"));

        return (AE_AML_OPERAND_VALUE);
    }







    switch (Package->RetInfo.Type)
    {
    case 128:

        Status = AcpiNsCustomPackage (Info, Elements, Count);
        break;

    case 140:






        ExpectedCount = Package->RetInfo.Count1 + Package->RetInfo.Count2;
        if (Count < ExpectedCount)
        {
            goto PackageTooSmall;
        }
        else if (Count > ExpectedCount)
        {
            ACPI_DEBUG_PRINT ((ACPI_DB_REPAIR,
                "%s: Return Package is larger than needed - "
                "found %u, expected %u\n",
                Info->FullPathname, Count, ExpectedCount));
        }



        Status = AcpiNsCheckPackageElements (Info, Elements,
            Package->RetInfo.ObjectType1, Package->RetInfo.Count1,
            Package->RetInfo.ObjectType2, Package->RetInfo.Count2, 0);
        break;

    case 138:




        for (i = 0; i < Count; i++)
        {
            Status = AcpiNsCheckObjectType (Info, Elements,
                Package->RetInfo.ObjectType1, i);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }

            Elements++;
        }
        break;

    case 139:







        ExpectedCount = Package->RetInfo3.Count;
        if (Count < ExpectedCount)
        {
            goto PackageTooSmall;
        }



        for (i = 0; i < Count; i++)
        {
            if (i < Package->RetInfo3.Count)
            {


                Status = AcpiNsCheckObjectType (Info, Elements,
                    Package->RetInfo3.ObjectType[i], i);
                if (ACPI_FAILURE (Status))
                {
                    return (Status);
                }
            }
            else
            {


                Status = AcpiNsCheckObjectType (Info, Elements,
                    Package->RetInfo3.TailObjectType, i);
                if (ACPI_FAILURE (Status))
                {
                    return (Status);
                }
            }

            Elements++;
        }
        break;

    case 131:



        Status = AcpiNsCheckObjectType (
            Info, Elements, ACPI_RTYPE_INTEGER, 0);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }

        Elements++;
        Count--;



        Status = AcpiNsCheckPackageList (Info, Package, Elements, Count);
        break;

    case 132:



        Status = AcpiNsCheckObjectType (
            Info, Elements, ACPI_RTYPE_INTEGER, 0);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }





        ExpectedCount = (UINT32) (*Elements)->Integer.Value;
        if (ExpectedCount >= Count)
        {
            goto PackageTooSmall;
        }

        Count = ExpectedCount;
        Elements++;



        Status = AcpiNsCheckPackageList (Info, Package, Elements, Count);
        break;

    case 137:
    case 135:
    case 133:
    case 136:
    case 134:
        if (*Elements && ((*Elements)->Common.Type != ACPI_TYPE_PACKAGE))
        {


            Status = AcpiNsWrapWithPackage (
                Info, ReturnObject, ReturnObjectPtr);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }



            ReturnObject = *ReturnObjectPtr;
            Elements = ReturnObject->Package.Elements;
            Count = 1;
        }



        Status = AcpiNsCheckPackageList (Info, Package, Elements, Count);
        break;

    case 129:




        break;

    case 130:



        if (Count & 1)
        {
            ExpectedCount = Count + 1;
            goto PackageTooSmall;
        }

        while (Count > 0)
        {
            Status = AcpiNsCheckObjectType(Info, Elements,
                Package->RetInfo.ObjectType1, 0);
            if (ACPI_FAILURE(Status))
            {
                return (Status);
            }



            if ((*Elements)->Buffer.Length != 16)
            {
                ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname,
                    Info->NodeFlags, "Invalid length for UUID Buffer"));
                return (AE_AML_OPERAND_VALUE);
            }

            Status = AcpiNsCheckObjectType(Info, Elements + 1,
                Package->RetInfo.ObjectType2, 0);
            if (ACPI_FAILURE(Status))
            {
                return (Status);
            }

            Elements += 2;
            Count -= 2;
        }
        break;

    default:



        ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname, Info->NodeFlags,
            "Invalid internal return type in table entry: %X",
            Package->RetInfo.Type));

        return (AE_AML_INTERNAL);
    }

    return (Status);


PackageTooSmall:



    ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname, Info->NodeFlags,
        "Return Package is too small - found %u elements, expected %u",
        Count, ExpectedCount));

    return (AE_AML_OPERAND_VALUE);
}
