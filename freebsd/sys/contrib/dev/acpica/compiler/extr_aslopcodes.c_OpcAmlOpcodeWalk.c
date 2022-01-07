
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;


 int AE_OK ;
 int AslGbl_TotalParseNodes ;
 int OpcGenerateAmlOpcode (int *) ;
 int OpnGenerateAmlOperands (int *) ;

ACPI_STATUS
OpcAmlOpcodeWalk (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{

    AslGbl_TotalParseNodes++;

    OpcGenerateAmlOpcode (Op);
    OpnGenerateAmlOperands (Op);
    return (AE_OK);
}
