
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_5__ {scalar_t__ Integer; } ;
struct TYPE_6__ {int DisasmFlags; TYPE_1__ Value; TYPE_3__* Next; } ;
struct TYPE_7__ {TYPE_2__ Common; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ACPI_PARSEOP_IGNORE ;
 int * AcpiGbl_AccessTypes ;
 int * AcpiGbl_LockRule ;
 int * AcpiGbl_UpdateRules ;
 int AcpiOsPrintf (char*,int ) ;

void
AcpiDmFieldFlags (
    ACPI_PARSE_OBJECT *Op)
{
    UINT32 Flags;


    Op = Op->Common.Next;
    Flags = (UINT8) Op->Common.Value.Integer;



    Op->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;

    AcpiOsPrintf ("%s, ", AcpiGbl_AccessTypes [Flags & 0x07]);
    AcpiOsPrintf ("%s, ", AcpiGbl_LockRule [(Flags & 0x10) >> 4]);
    AcpiOsPrintf ("%s)", AcpiGbl_UpdateRules [(Flags & 0x60) >> 5]);
}
