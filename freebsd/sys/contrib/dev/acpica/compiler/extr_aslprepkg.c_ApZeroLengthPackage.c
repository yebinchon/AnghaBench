
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_PARSE_OBJECT ;


 int ASL_ERROR ;
 int ASL_MSG_RESERVED_PACKAGE_LENGTH ;
 int AslError (int ,int ,int *,int ) ;
 int AslGbl_MsgBuffer ;
 int sprintf (int ,char*,char const*) ;

__attribute__((used)) static void
ApZeroLengthPackage (
    const char *PredefinedName,
    ACPI_PARSE_OBJECT *Op)
{

    sprintf (AslGbl_MsgBuffer, "%s: length is zero", PredefinedName);

    AslError (ASL_ERROR, ASL_MSG_RESERVED_PACKAGE_LENGTH, Op, AslGbl_MsgBuffer);
}
