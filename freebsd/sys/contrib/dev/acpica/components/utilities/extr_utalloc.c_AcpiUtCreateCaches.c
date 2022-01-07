
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;
typedef int ACPI_PARSE_OBJ_NAMED ;
typedef int ACPI_PARSE_OBJ_COMMON ;
typedef int ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;
typedef int ACPI_GENERIC_STATE ;
typedef int ACPI_FILE_NODE ;
typedef int ACPI_COMMENT_NODE ;
typedef int ACPI_COMMENT_ADDR_NODE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_MAX_COMMENT_CACHE_DEPTH ;
 int ACPI_MAX_EXTPARSE_CACHE_DEPTH ;
 int ACPI_MAX_NAMESPACE_CACHE_DEPTH ;
 int ACPI_MAX_OBJECT_CACHE_DEPTH ;
 int ACPI_MAX_PARSE_CACHE_DEPTH ;
 int ACPI_MAX_STATE_CACHE_DEPTH ;
 int AE_OK ;
 int AcpiGbl_CommentAddrCache ;
 int AcpiGbl_FileCache ;
 int AcpiGbl_GlobalList ;
 int AcpiGbl_NamespaceCache ;
 int AcpiGbl_NsNodeList ;
 int AcpiGbl_OperandCache ;
 int AcpiGbl_PsNodeCache ;
 int AcpiGbl_PsNodeExtCache ;
 int AcpiGbl_RegCommentCache ;
 int AcpiGbl_StateCache ;
 int AcpiOsCreateCache (char*,int,int ,int *) ;
 int AcpiUtCreateList (char*,int,int *) ;

ACPI_STATUS
AcpiUtCreateCaches (
    void)
{
    ACPI_STATUS Status;




    Status = AcpiOsCreateCache ("Acpi-Namespace", sizeof (ACPI_NAMESPACE_NODE),
        ACPI_MAX_NAMESPACE_CACHE_DEPTH, &AcpiGbl_NamespaceCache);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    Status = AcpiOsCreateCache ("Acpi-State", sizeof (ACPI_GENERIC_STATE),
        ACPI_MAX_STATE_CACHE_DEPTH, &AcpiGbl_StateCache);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    Status = AcpiOsCreateCache ("Acpi-Parse", sizeof (ACPI_PARSE_OBJ_COMMON),
        ACPI_MAX_PARSE_CACHE_DEPTH, &AcpiGbl_PsNodeCache);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    Status = AcpiOsCreateCache ("Acpi-ParseExt", sizeof (ACPI_PARSE_OBJ_NAMED),
        ACPI_MAX_EXTPARSE_CACHE_DEPTH, &AcpiGbl_PsNodeExtCache);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    Status = AcpiOsCreateCache ("Acpi-Operand", sizeof (ACPI_OPERAND_OBJECT),
        ACPI_MAX_OBJECT_CACHE_DEPTH, &AcpiGbl_OperandCache);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }
    return (AE_OK);
}
