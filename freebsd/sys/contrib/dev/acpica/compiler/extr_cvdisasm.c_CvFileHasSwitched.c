
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ CvFilename; } ;
struct TYPE_5__ {TYPE_1__ Common; } ;
typedef int BOOLEAN ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 scalar_t__ AcpiGbl_CurrentFilename ;
 scalar_t__ AcpiUtStricmp (scalar_t__,scalar_t__) ;
 int FALSE ;
 int TRUE ;

BOOLEAN
CvFileHasSwitched(
    ACPI_PARSE_OBJECT *Op)
{

    if (Op->Common.CvFilename &&
        AcpiGbl_CurrentFilename &&
        AcpiUtStricmp(Op->Common.CvFilename, AcpiGbl_CurrentFilename))
    {
        return (TRUE);
    }

    return (FALSE);
}
