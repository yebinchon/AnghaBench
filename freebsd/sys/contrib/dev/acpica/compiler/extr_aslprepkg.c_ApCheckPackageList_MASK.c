#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_17__ {scalar_t__ Integer; } ;
struct TYPE_19__ {TYPE_7__* Next; TYPE_3__ Value; TYPE_7__* Child; } ;
struct TYPE_21__ {TYPE_5__ Asl; } ;
struct TYPE_18__ {int Type; scalar_t__ Count1; scalar_t__ Count2; int /*<<< orphan*/  ObjectType1; int /*<<< orphan*/  ObjectType2; } ;
struct TYPE_16__ {scalar_t__ Count; int /*<<< orphan*/ * ObjectType; } ;
struct TYPE_15__ {scalar_t__ PkgCount; int /*<<< orphan*/  SubObjectTypes; } ;
struct TYPE_20__ {TYPE_4__ RetInfo; TYPE_2__ RetInfo2; TYPE_1__ RetInfo4; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_6__ ACPI_PREDEFINED_INFO ;
typedef  TYPE_7__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_PTYPE2 135 
#define  ACPI_PTYPE2_COUNT 134 
#define  ACPI_PTYPE2_FIXED 133 
#define  ACPI_PTYPE2_FIX_VAR 132 
#define  ACPI_PTYPE2_MIN 131 
#define  ACPI_PTYPE2_PKG_COUNT 130 
#define  ACPI_PTYPE2_REV_FIXED 129 
#define  ACPI_PTYPE2_VAR_VAR 128 
 int /*<<< orphan*/  ACPI_RTYPE_INTEGER ; 
 int /*<<< orphan*/  ACPI_RTYPE_PACKAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,TYPE_7__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char const*,TYPE_7__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char const*,TYPE_7__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char const*,TYPE_7__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char const*,TYPE_7__*) ; 

__attribute__((used)) static void
FUNC7 (
    const char                  *PredefinedName,
    ACPI_PARSE_OBJECT           *ParentOp,
    const ACPI_PREDEFINED_INFO  *Package,
    UINT32                      StartIndex,
    UINT32                      ParentCount)
{
    ACPI_PARSE_OBJECT           *SubPackageOp = ParentOp;
    ACPI_PARSE_OBJECT           *Op;
    ACPI_STATUS                 Status;
    UINT32                      Count;
    UINT32                      ExpectedCount;
    UINT32                      i;
    UINT32                      j;


    /*
     * Validate each subpackage in the parent Package
     *
     * Note: We ignore NULL package elements on the assumption that
     * they will be initialized by the BIOS or other ASL code.
     */
    for (i = 0; (i < ParentCount) && SubPackageOp; i++)
    {
        /* Each object in the list must be of type Package */

        Status = FUNC2 (PredefinedName, SubPackageOp,
            ACPI_RTYPE_PACKAGE, i + StartIndex);
        if (FUNC0 (Status))
        {
            goto NextSubpackage;
        }

        /* Examine the different types of expected subpackages */

        Op = SubPackageOp->Asl.Child;

        /* First child is the package length */

        Count = (UINT32) Op->Asl.Value.Integer;
        Op = Op->Asl.Next;

        /*
         * Most subpackage must have at least one element, with
         * only rare exceptions. (_RDI)
         */
        if (!Count &&
            (Package->RetInfo.Type != ACPI_PTYPE2_VAR_VAR))
        {
            FUNC6 (PredefinedName, SubPackageOp);
            goto NextSubpackage;
        }

        /*
         * Decode the package type.
         * PTYPE2 indicates that a "package of packages" is expected for
         * this name. The various flavors of PTYPE2 indicate the number
         * and format of the subpackages.
         */
        switch (Package->RetInfo.Type)
        {
        case ACPI_PTYPE2:
        case ACPI_PTYPE2_PKG_COUNT:
        case ACPI_PTYPE2_REV_FIXED:

            /* Each subpackage has a fixed number of elements */

            ExpectedCount = Package->RetInfo.Count1 + Package->RetInfo.Count2;
            if (Count < ExpectedCount)
            {
                FUNC5 (PredefinedName, SubPackageOp,
                    Count, ExpectedCount);
                break;
            }
            if (Count > ExpectedCount)
            {
                FUNC4 (PredefinedName, SubPackageOp,
                    Count, ExpectedCount);
                break;
            }

            FUNC3 (PredefinedName, Op,
                Package->RetInfo.ObjectType1, Package->RetInfo.Count1,
                Package->RetInfo.ObjectType2, Package->RetInfo.Count2);
            break;

        case ACPI_PTYPE2_FIX_VAR:
            /*
             * Each subpackage has a fixed number of elements and an
             * optional element
             */
            ExpectedCount = Package->RetInfo.Count1 + Package->RetInfo.Count2;
            if (Count < ExpectedCount)
            {
                FUNC5 (PredefinedName, SubPackageOp,
                    Count, ExpectedCount);
                break;
            }

            FUNC3 (PredefinedName, Op,
                Package->RetInfo.ObjectType1, Package->RetInfo.Count1,
                Package->RetInfo.ObjectType2,
                Count - Package->RetInfo.Count1);
            break;

        case ACPI_PTYPE2_VAR_VAR:
            /*
             * Must have at least the minimum number elements.
             * A zero PkgCount means the number of elements is variable.
             */
            ExpectedCount = Package->RetInfo4.PkgCount;
            if (ExpectedCount && (Count < ExpectedCount))
            {
                FUNC5 (PredefinedName, SubPackageOp,
                    Count, 1);
                break;
            }

            FUNC3 (PredefinedName, Op,
                Package->RetInfo4.SubObjectTypes,
                Package->RetInfo4.PkgCount,
                0, 0);
            break;

        case ACPI_PTYPE2_FIXED:

            /* Each subpackage has a fixed length */

            ExpectedCount = Package->RetInfo2.Count;
            if (Count < ExpectedCount)
            {
                FUNC5 (PredefinedName, SubPackageOp,
                    Count, ExpectedCount);
                break;
            }
            if (Count > ExpectedCount)
            {
                FUNC4 (PredefinedName, SubPackageOp,
                    Count, ExpectedCount);
                break;
            }

            /* Check each object/type combination */

            for (j = 0; j < ExpectedCount; j++)
            {
                FUNC2 (PredefinedName, Op,
                    Package->RetInfo2.ObjectType[j], j);

                Op = Op->Asl.Next;
            }
            break;

        case ACPI_PTYPE2_MIN:

            /* Each subpackage has a variable but minimum length */

            ExpectedCount = Package->RetInfo.Count1;
            if (Count < ExpectedCount)
            {
                FUNC5 (PredefinedName, SubPackageOp,
                    Count, ExpectedCount);
                break;
            }

            /* Check the type of each subpackage element */

            FUNC3 (PredefinedName, Op,
                Package->RetInfo.ObjectType1, Count, 0, 0);
            break;

        case ACPI_PTYPE2_COUNT:
            /*
             * First element is the (Integer) count of elements, including
             * the count field (the ACPI name is NumElements)
             */
            Status = FUNC2 (PredefinedName, Op,
                ACPI_RTYPE_INTEGER, 0);

            /* We must have an integer count from above (otherwise, use Count) */

            if (FUNC1 (Status))
            {
                /*
                 * Make sure package is large enough for the Count and is
                 * is as large as the minimum size
                 */
                ExpectedCount = (UINT32) Op->Asl.Value.Integer;

                if (Count < ExpectedCount)
                {
                    FUNC5 (PredefinedName, SubPackageOp,
                        Count, ExpectedCount);
                    break;
                }
                else if (Count > ExpectedCount)
                {
                    FUNC4 (PredefinedName, SubPackageOp,
                        Count, ExpectedCount);
                }

                /* Some names of this type have a minimum length */

                if (Count < Package->RetInfo.Count1)
                {
                    ExpectedCount = Package->RetInfo.Count1;
                    FUNC5 (PredefinedName, SubPackageOp,
                        Count, ExpectedCount);
                    break;
                }

                Count = ExpectedCount;
            }

            /* Check the type of each subpackage element */

            Op = Op->Asl.Next;
            FUNC3 (PredefinedName, Op,
                Package->RetInfo.ObjectType1, (Count - 1), 0, 0);
            break;

        default:
            break;
        }

NextSubpackage:
        SubPackageOp = SubPackageOp->Asl.Next;
    }
}