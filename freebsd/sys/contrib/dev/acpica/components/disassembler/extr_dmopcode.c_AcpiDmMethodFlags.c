
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_7__ {scalar_t__ Integer; } ;
struct TYPE_8__ {int DisasmFlags; TYPE_1__ Value; } ;
struct TYPE_9__ {TYPE_2__ Common; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ACPI_PARSEOP_IGNORE ;
 int AcpiOsPrintf (char*,...) ;
 TYPE_3__* AcpiPsGetDepthNext (int *,TYPE_3__*) ;

void
AcpiDmMethodFlags (
    ACPI_PARSE_OBJECT *Op)
{
    UINT32 Flags;
    UINT32 Args;




    Op = AcpiPsGetDepthNext (((void*)0), Op);
    Flags = (UINT8) Op->Common.Value.Integer;
    Args = Flags & 0x07;



    Op->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;



    AcpiOsPrintf (", %u, ", Args);



    if (!(Flags & 0x08))
    {
        AcpiOsPrintf ("Not");
    }

    AcpiOsPrintf ("Serialized");



    if (Flags & 0xF0)
    {
        AcpiOsPrintf (", %u", Flags >> 4);
    }
}
