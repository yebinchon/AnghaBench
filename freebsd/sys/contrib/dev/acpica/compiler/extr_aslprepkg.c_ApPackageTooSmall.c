
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_PARSE_OBJECT ;


 int ASL_ERROR ;
 int ASL_MSG_RESERVED_PACKAGE_LENGTH ;
 int AslError (int ,int ,int *,int ) ;
 int AslGbl_MsgBuffer ;
 int sprintf (int ,char*,char const*,int,int) ;

__attribute__((used)) static void
ApPackageTooSmall (
    const char *PredefinedName,
    ACPI_PARSE_OBJECT *Op,
    UINT32 Count,
    UINT32 ExpectedCount)
{

    sprintf (AslGbl_MsgBuffer, "%s: length %u, required minimum is %u",
        PredefinedName, Count, ExpectedCount);

    AslError (ASL_ERROR, ASL_MSG_RESERVED_PACKAGE_LENGTH, Op, AslGbl_MsgBuffer);
}
