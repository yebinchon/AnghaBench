
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int Name; } ;
struct TYPE_8__ {int Arg; } ;
struct TYPE_7__ {int Next; int Parent; TYPE_2__ Value; int AmlOpcode; } ;
struct TYPE_9__ {TYPE_1__ Common; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;
typedef TYPE_4__ ACPI_OPCODE_INFO ;


 int ACPI_DEBUG_ONLY_MEMBERS (int ) ;
 int AcpiOsPrintf (char*,...) ;
 TYPE_4__* AcpiPsGetOpcodeInfo (int ) ;

__attribute__((used)) static void
AcpiDbDumpParserDescriptor (
    ACPI_PARSE_OBJECT *Op)
{
    const ACPI_OPCODE_INFO *Info;


    Info = AcpiPsGetOpcodeInfo (Op->Common.AmlOpcode);

    AcpiOsPrintf ("Parser Op Descriptor:\n");
    AcpiOsPrintf ("%20.20s : %4.4X\n", "Opcode", Op->Common.AmlOpcode);

    ACPI_DEBUG_ONLY_MEMBERS (AcpiOsPrintf ("%20.20s : %s\n", "Opcode Name",
        Info->Name));

    AcpiOsPrintf ("%20.20s : %p\n", "Value/ArgList", Op->Common.Value.Arg);
    AcpiOsPrintf ("%20.20s : %p\n", "Parent", Op->Common.Parent);
    AcpiOsPrintf ("%20.20s : %p\n", "NextOp", Op->Common.Next);
}
