
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOLEAN ;
typedef scalar_t__ ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;


 scalar_t__ AE_CTRL_TRUE ;
 int ASL_WALK_VISIT_DOWNWARD ;
 int ApDeviceSubtreeWalk ;
 int FALSE ;
 int TRUE ;
 scalar_t__ TrWalkParseTree (int *,int ,int ,int *,char*) ;

BOOLEAN
ApFindNameInDeviceTree (
    char *Name,
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_STATUS Status;


    Status = TrWalkParseTree (Op, ASL_WALK_VISIT_DOWNWARD,
        ApDeviceSubtreeWalk, ((void*)0), Name);

    if (Status == AE_CTRL_TRUE)
    {
        return (TRUE);
    }

    return (FALSE);
}
