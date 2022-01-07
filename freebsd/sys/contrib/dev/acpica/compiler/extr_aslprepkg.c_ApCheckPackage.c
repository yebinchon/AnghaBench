
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_22__ {scalar_t__ Integer; } ;
struct TYPE_24__ {TYPE_8__* Next; TYPE_8__* Child; TYPE_2__ Value; } ;
struct TYPE_28__ {TYPE_4__ Asl; } ;
struct TYPE_26__ {char* Name; } ;
struct TYPE_25__ {size_t Count1; int ObjectType1; } ;
struct TYPE_23__ {int Type; size_t Count1; size_t Count2; int ObjectType1; int ObjectType2; } ;
struct TYPE_21__ {size_t Count; int TailObjectType; int * ObjectType; } ;
struct TYPE_27__ {TYPE_6__ Info; TYPE_5__ RetInfo4; TYPE_3__ RetInfo; TYPE_1__ RetInfo3; } ;
typedef int ACPI_STATUS ;
typedef TYPE_7__ ACPI_PREDEFINED_INFO ;
typedef TYPE_8__ ACPI_PARSE_OBJECT ;
 int ACPI_RTYPE_INTEGER ;
 int ACPI_SUCCESS (int ) ;
 int ASL_ERROR ;
 int ASL_MSG_RESERVED_PACKAGE_LENGTH ;
 int ApCheckObjectType (char*,TYPE_8__*,int ,size_t) ;
 int ApCheckPackageElements (char*,TYPE_8__*,int ,size_t,int ,size_t) ;
 int ApCheckPackageList (char*,TYPE_8__*,TYPE_7__ const*,int,size_t) ;
 int ApCustomPackage (TYPE_8__*,TYPE_7__ const*) ;
 int ApPackageTooLarge (char*,TYPE_8__*,size_t,size_t) ;
 int ApPackageTooSmall (char*,TYPE_8__*,size_t,size_t) ;
 int ApZeroLengthPackage (char*,TYPE_8__*) ;
 int AslError (int ,int ,TYPE_8__*,int ) ;
 int AslGbl_MsgBuffer ;
 int sprintf (int ,char*,char*,size_t) ;

void
ApCheckPackage (
    ACPI_PARSE_OBJECT *ParentOp,
    const ACPI_PREDEFINED_INFO *Predefined)
{
    ACPI_PARSE_OBJECT *Op;
    const ACPI_PREDEFINED_INFO *Package;
    ACPI_STATUS Status;
    UINT32 ExpectedCount;
    UINT32 Count;
    UINT32 i;




    Package = Predefined + 1;



    Op = ParentOp->Asl.Child;
    Count = (UINT32) Op->Asl.Value.Integer;
    if (!Count)
    {
        switch (Package->RetInfo.Type)
        {
        case 140:
        case 139:
        case 132:
        case 131:

            ApZeroLengthPackage (Predefined->Info.Name, ParentOp);
            break;

        case 138:
        case 137:
        case 136:
        case 135:
        case 133:
        case 134:
        case 129:
        default:

            break;
        }

        return;
    }



    Op = Op->Asl.Next;



    switch (Package->RetInfo.Type)
    {
    case 128:

        ApCustomPackage (ParentOp, Predefined);
        break;

    case 140:






        ExpectedCount = Package->RetInfo.Count1 + Package->RetInfo.Count2;
        if (Count < ExpectedCount)
        {
            goto PackageTooSmall;
        }
        else if (Count > ExpectedCount)
        {
            ApPackageTooLarge (Predefined->Info.Name, ParentOp,
                Count, ExpectedCount);
        }



        ApCheckPackageElements (Predefined->Info.Name, Op,
            Package->RetInfo.ObjectType1, Package->RetInfo.Count1,
            Package->RetInfo.ObjectType2, Package->RetInfo.Count2);
        break;

    case 138:




        for (i = 0; i < Count; i++)
        {
            ApCheckObjectType (Predefined->Info.Name, Op,
                Package->RetInfo.ObjectType1, i);
            Op = Op->Asl.Next;
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


                ApCheckObjectType (Predefined->Info.Name, Op,
                    Package->RetInfo3.ObjectType[i], i);
            }
            else
            {


                ApCheckObjectType (Predefined->Info.Name, Op,
                    Package->RetInfo3.TailObjectType, i);
            }

            Op = Op->Asl.Next;
        }
        break;

    case 131:



        ApCheckObjectType (Predefined->Info.Name, Op,
            ACPI_RTYPE_INTEGER, 0);

        Op = Op->Asl.Next;
        Count--;



        ApCheckPackageList (Predefined->Info.Name, Op,
            Package, 1, Count);
        break;

    case 132:



        Status = ApCheckObjectType (Predefined->Info.Name, Op,
            ACPI_RTYPE_INTEGER, 0);



        if (ACPI_SUCCESS (Status))
        {




            ExpectedCount = (UINT32) Op->Asl.Value.Integer;
            if (ExpectedCount >= Count)
            {
                goto PackageTooSmall;
            }

            Count = ExpectedCount;
        }

        Op = Op->Asl.Next;



        ApCheckPackageList (Predefined->Info.Name, Op,
            Package, 1, Count);
        break;

    case 130:





        if (Count & 1)
        {
            sprintf (AslGbl_MsgBuffer, "%4.4s: Package length, %d, must be even.",
                Predefined->Info.Name, Count);

            AslError (ASL_ERROR, ASL_MSG_RESERVED_PACKAGE_LENGTH,
                ParentOp->Asl.Child, AslGbl_MsgBuffer);
        }



        for (i = 0; i < Count; ++i)
        {
            if (i & 1)
            {
                ApCheckObjectType (Predefined->Info.Name, Op,
                    Package->RetInfo.ObjectType2, i);
            }
            else
            {
                ApCheckObjectType (Predefined->Info.Name, Op,
                    Package->RetInfo.ObjectType1, i);
            }

            Op = Op->Asl.Next;
        }

        break;

    case 129:



        ExpectedCount = Package->RetInfo4.Count1 + 1;
        if (Count < ExpectedCount)
        {
            goto PackageTooSmall;
        }



        for (i = 0; i < Package->RetInfo4.Count1; ++i)
        {
            ApCheckObjectType (Predefined->Info.Name, Op,
                Package->RetInfo4.ObjectType1, i);
            Op = Op->Asl.Next;
        }



        ApCheckPackageList (Predefined->Info.Name, Op,
            Package, Package->RetInfo4.Count1, Count);

        break;

    case 137:
    case 135:
    case 133:
    case 136:
    case 134:







        ApCheckPackageList (Predefined->Info.Name, Op,
            Package, 0, Count);
        break;

    default:
        return;
    }

    return;

PackageTooSmall:
    ApPackageTooSmall (Predefined->Info.Name, ParentOp,
        Count, ExpectedCount);
}
