
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_PARSE_OBJECT ;


 int UtDumpParseOpName (int *,int ,int ) ;

void
UtDumpBasicOp (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level)
{



    UtDumpParseOpName (Op, Level, 0);
}
