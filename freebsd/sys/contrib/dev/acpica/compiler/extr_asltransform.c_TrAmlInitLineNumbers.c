
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int LogicalLineNumber; int LogicalByteOffset; int LineNumber; int EndLogicalLine; int EndLine; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;



__attribute__((used)) static void
TrAmlInitLineNumbers (
    ACPI_PARSE_OBJECT *Op,
    ACPI_PARSE_OBJECT *Neighbor)
{

    Op->Asl.EndLine = Neighbor->Asl.EndLine;
    Op->Asl.EndLogicalLine = Neighbor->Asl.EndLogicalLine;
    Op->Asl.LineNumber = Neighbor->Asl.LineNumber;
    Op->Asl.LogicalByteOffset = Neighbor->Asl.LogicalByteOffset;
    Op->Asl.LogicalLineNumber = Neighbor->Asl.LogicalLineNumber;
}
