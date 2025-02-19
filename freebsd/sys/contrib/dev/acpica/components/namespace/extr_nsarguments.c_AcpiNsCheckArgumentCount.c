
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_12__ {int Flags; scalar_t__ Type; TYPE_2__* Object; } ;
struct TYPE_10__ {int ArgumentList; } ;
struct TYPE_11__ {TYPE_3__ Info; } ;
struct TYPE_8__ {scalar_t__ ParamCount; } ;
struct TYPE_9__ {TYPE_1__ Method; } ;
typedef TYPE_4__ ACPI_PREDEFINED_INFO ;
typedef TYPE_5__ ACPI_NAMESPACE_NODE ;


 int ACPI_INFO_PREDEFINED (int ) ;
 scalar_t__ ACPI_TYPE_METHOD ;
 int ACPI_WARN_ALWAYS ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_INFO ;
 int ANOBJ_EVALUATED ;
 int ARG_COUNT_IS_MINIMUM ;
 int AcpiUtGetTypeName (scalar_t__) ;
 scalar_t__ METHOD_GET_ARG_COUNT (int) ;

void
AcpiNsCheckArgumentCount (
    char *Pathname,
    ACPI_NAMESPACE_NODE *Node,
    UINT32 UserParamCount,
    const ACPI_PREDEFINED_INFO *Predefined)
{
    UINT32 AmlParamCount;
    UINT32 RequiredParamCount;


    if (Node->Flags & ANOBJ_EVALUATED)
    {
        return;
    }

    if (!Predefined)
    {




        if (Node->Type != ACPI_TYPE_METHOD)
        {
            if (UserParamCount)
            {
                ACPI_INFO_PREDEFINED ((AE_INFO, Pathname, ACPI_WARN_ALWAYS,
                    "%u arguments were passed to a non-method ACPI object (%s)",
                    UserParamCount, AcpiUtGetTypeName (Node->Type)));
            }

            return;
        }
        AmlParamCount = Node->Object->Method.ParamCount;

        if (UserParamCount < AmlParamCount)
        {
            ACPI_WARN_PREDEFINED ((AE_INFO, Pathname, ACPI_WARN_ALWAYS,
                "Insufficient arguments - "
                "Caller passed %u, method requires %u",
                UserParamCount, AmlParamCount));
        }
        else if (UserParamCount > AmlParamCount)
        {
            ACPI_INFO_PREDEFINED ((AE_INFO, Pathname, ACPI_WARN_ALWAYS,
                "Excess arguments - "
                "Caller passed %u, method requires %u",
                UserParamCount, AmlParamCount));
        }

        return;
    }
    RequiredParamCount =
        METHOD_GET_ARG_COUNT (Predefined->Info.ArgumentList);

    if (UserParamCount < RequiredParamCount)
    {
        ACPI_WARN_PREDEFINED ((AE_INFO, Pathname, ACPI_WARN_ALWAYS,
            "Insufficient arguments - "
            "Caller passed %u, ACPI requires %u",
            UserParamCount, RequiredParamCount));
    }
    else if ((UserParamCount > RequiredParamCount) &&
        !(Predefined->Info.ArgumentList & ARG_COUNT_IS_MINIMUM))
    {
        ACPI_INFO_PREDEFINED ((AE_INFO, Pathname, ACPI_WARN_ALWAYS,
            "Excess arguments - "
            "Caller passed %u, ACPI requires %u",
            UserParamCount, RequiredParamCount));
    }
}
