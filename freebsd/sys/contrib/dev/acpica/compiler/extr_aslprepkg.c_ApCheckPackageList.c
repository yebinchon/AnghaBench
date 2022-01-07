
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_17__ {scalar_t__ Integer; } ;
struct TYPE_19__ {TYPE_7__* Next; TYPE_3__ Value; TYPE_7__* Child; } ;
struct TYPE_21__ {TYPE_5__ Asl; } ;
struct TYPE_18__ {int Type; scalar_t__ Count1; scalar_t__ Count2; int ObjectType1; int ObjectType2; } ;
struct TYPE_16__ {scalar_t__ Count; int * ObjectType; } ;
struct TYPE_15__ {scalar_t__ PkgCount; int SubObjectTypes; } ;
struct TYPE_20__ {TYPE_4__ RetInfo; TYPE_2__ RetInfo2; TYPE_1__ RetInfo4; } ;
typedef int ACPI_STATUS ;
typedef TYPE_6__ ACPI_PREDEFINED_INFO ;
typedef TYPE_7__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_RTYPE_INTEGER ;
 int ACPI_RTYPE_PACKAGE ;
 int ACPI_SUCCESS (int ) ;
 int ApCheckObjectType (char const*,TYPE_7__*,int ,scalar_t__) ;
 int ApCheckPackageElements (char const*,TYPE_7__*,int ,scalar_t__,int ,scalar_t__) ;
 int ApPackageTooLarge (char const*,TYPE_7__*,scalar_t__,scalar_t__) ;
 int ApPackageTooSmall (char const*,TYPE_7__*,scalar_t__,scalar_t__) ;
 int ApZeroLengthPackage (char const*,TYPE_7__*) ;

__attribute__((used)) static void
ApCheckPackageList (
    const char *PredefinedName,
    ACPI_PARSE_OBJECT *ParentOp,
    const ACPI_PREDEFINED_INFO *Package,
    UINT32 StartIndex,
    UINT32 ParentCount)
{
    ACPI_PARSE_OBJECT *SubPackageOp = ParentOp;
    ACPI_PARSE_OBJECT *Op;
    ACPI_STATUS Status;
    UINT32 Count;
    UINT32 ExpectedCount;
    UINT32 i;
    UINT32 j;
    for (i = 0; (i < ParentCount) && SubPackageOp; i++)
    {


        Status = ApCheckObjectType (PredefinedName, SubPackageOp,
            ACPI_RTYPE_PACKAGE, i + StartIndex);
        if (ACPI_FAILURE (Status))
        {
            goto NextSubpackage;
        }



        Op = SubPackageOp->Asl.Child;



        Count = (UINT32) Op->Asl.Value.Integer;
        Op = Op->Asl.Next;





        if (!Count &&
            (Package->RetInfo.Type != 128))
        {
            ApZeroLengthPackage (PredefinedName, SubPackageOp);
            goto NextSubpackage;
        }







        switch (Package->RetInfo.Type)
        {
        case 135:
        case 130:
        case 129:



            ExpectedCount = Package->RetInfo.Count1 + Package->RetInfo.Count2;
            if (Count < ExpectedCount)
            {
                ApPackageTooSmall (PredefinedName, SubPackageOp,
                    Count, ExpectedCount);
                break;
            }
            if (Count > ExpectedCount)
            {
                ApPackageTooLarge (PredefinedName, SubPackageOp,
                    Count, ExpectedCount);
                break;
            }

            ApCheckPackageElements (PredefinedName, Op,
                Package->RetInfo.ObjectType1, Package->RetInfo.Count1,
                Package->RetInfo.ObjectType2, Package->RetInfo.Count2);
            break;

        case 132:




            ExpectedCount = Package->RetInfo.Count1 + Package->RetInfo.Count2;
            if (Count < ExpectedCount)
            {
                ApPackageTooSmall (PredefinedName, SubPackageOp,
                    Count, ExpectedCount);
                break;
            }

            ApCheckPackageElements (PredefinedName, Op,
                Package->RetInfo.ObjectType1, Package->RetInfo.Count1,
                Package->RetInfo.ObjectType2,
                Count - Package->RetInfo.Count1);
            break;

        case 128:




            ExpectedCount = Package->RetInfo4.PkgCount;
            if (ExpectedCount && (Count < ExpectedCount))
            {
                ApPackageTooSmall (PredefinedName, SubPackageOp,
                    Count, 1);
                break;
            }

            ApCheckPackageElements (PredefinedName, Op,
                Package->RetInfo4.SubObjectTypes,
                Package->RetInfo4.PkgCount,
                0, 0);
            break;

        case 133:



            ExpectedCount = Package->RetInfo2.Count;
            if (Count < ExpectedCount)
            {
                ApPackageTooSmall (PredefinedName, SubPackageOp,
                    Count, ExpectedCount);
                break;
            }
            if (Count > ExpectedCount)
            {
                ApPackageTooLarge (PredefinedName, SubPackageOp,
                    Count, ExpectedCount);
                break;
            }



            for (j = 0; j < ExpectedCount; j++)
            {
                ApCheckObjectType (PredefinedName, Op,
                    Package->RetInfo2.ObjectType[j], j);

                Op = Op->Asl.Next;
            }
            break;

        case 131:



            ExpectedCount = Package->RetInfo.Count1;
            if (Count < ExpectedCount)
            {
                ApPackageTooSmall (PredefinedName, SubPackageOp,
                    Count, ExpectedCount);
                break;
            }



            ApCheckPackageElements (PredefinedName, Op,
                Package->RetInfo.ObjectType1, Count, 0, 0);
            break;

        case 134:




            Status = ApCheckObjectType (PredefinedName, Op,
                ACPI_RTYPE_INTEGER, 0);



            if (ACPI_SUCCESS (Status))
            {




                ExpectedCount = (UINT32) Op->Asl.Value.Integer;

                if (Count < ExpectedCount)
                {
                    ApPackageTooSmall (PredefinedName, SubPackageOp,
                        Count, ExpectedCount);
                    break;
                }
                else if (Count > ExpectedCount)
                {
                    ApPackageTooLarge (PredefinedName, SubPackageOp,
                        Count, ExpectedCount);
                }



                if (Count < Package->RetInfo.Count1)
                {
                    ExpectedCount = Package->RetInfo.Count1;
                    ApPackageTooSmall (PredefinedName, SubPackageOp,
                        Count, ExpectedCount);
                    break;
                }

                Count = ExpectedCount;
            }



            Op = Op->Asl.Next;
            ApCheckPackageElements (PredefinedName, Op,
                Package->RetInfo.ObjectType1, (Count - 1), 0, 0);
            break;

        default:
            break;
        }

NextSubpackage:
        SubPackageOp = SubPackageOp->Asl.Next;
    }
}
