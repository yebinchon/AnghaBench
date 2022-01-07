
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int BOOLEAN ;
typedef int ACPI_STATUS ;
typedef int ACPI_OPERAND_OBJECT ;


 int ACPI_FAILURE (int ) ;
 int AML_LOGICAL_EQUAL_OP ;
 int AML_LOGICAL_GREATER_OP ;
 int AML_LOGICAL_LESS_OP ;
 int AcpiExDoLogicalOp (int ,int *,int *,int *) ;
 int FALSE ;






 int TRUE ;

__attribute__((used)) static BOOLEAN
AcpiExDoMatch (
    UINT32 MatchOp,
    ACPI_OPERAND_OBJECT *PackageObj,
    ACPI_OPERAND_OBJECT *MatchObj)
{
    BOOLEAN LogicalResult = TRUE;
    ACPI_STATUS Status;
    switch (MatchOp)
    {
    case 128:



        break;

    case 133:




        Status = AcpiExDoLogicalOp (
            AML_LOGICAL_EQUAL_OP, MatchObj, PackageObj, &LogicalResult);
        if (ACPI_FAILURE (Status))
        {
            return (FALSE);
        }
        break;

    case 130:




        Status = AcpiExDoLogicalOp (
            AML_LOGICAL_LESS_OP, MatchObj, PackageObj, &LogicalResult);
        if (ACPI_FAILURE (Status))
        {
            return (FALSE);
        }
        LogicalResult = (BOOLEAN) !LogicalResult;
        break;

    case 129:




        Status = AcpiExDoLogicalOp (
            AML_LOGICAL_GREATER_OP, MatchObj, PackageObj, &LogicalResult);
        if (ACPI_FAILURE (Status))
        {
            return (FALSE);
        }
        break;

    case 132:




        Status = AcpiExDoLogicalOp (
            AML_LOGICAL_GREATER_OP, MatchObj, PackageObj, &LogicalResult);
        if (ACPI_FAILURE (Status))
        {
            return (FALSE);
        }
        LogicalResult = (BOOLEAN)!LogicalResult;
        break;

    case 131:




        Status = AcpiExDoLogicalOp (
            AML_LOGICAL_LESS_OP, MatchObj, PackageObj, &LogicalResult);
        if (ACPI_FAILURE (Status))
        {
            return (FALSE);
        }
        break;

    default:



        return (FALSE);
    }

    return (LogicalResult);
}
