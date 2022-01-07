
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {int Integer; } ;
struct TYPE_6__ {int AmlOpcode; int DisasmOpcode; TYPE_1__ Value; } ;
struct TYPE_7__ {TYPE_2__ Common; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ACPI_DASM_EISAID ;
 int ACPI_DASM_HID_STRING ;
 int ACPI_IS_ASCII (int) ;



 int AcpiUtDwordByteSwap (int) ;
 int isalpha (int) ;

__attribute__((used)) static void
AcpiDmGetHardwareIdType (
    ACPI_PARSE_OBJECT *Op)
{
    UINT32 BigEndianId;
    UINT32 Prefix[3];
    UINT32 i;


    switch (Op->Common.AmlOpcode)
    {
    case 129:



        Op->Common.DisasmOpcode = ACPI_DASM_HID_STRING;
        break;

    case 128:
    case 130:





        BigEndianId = AcpiUtDwordByteSwap ((UINT32) Op->Common.Value.Integer);



        Prefix[0] = ((BigEndianId >> 26) & 0x1F) + 0x40;
        Prefix[1] = ((BigEndianId >> 21) & 0x1F) + 0x40;
        Prefix[2] = ((BigEndianId >> 16) & 0x1F) + 0x40;



        for (i = 0; i < 3; i++)
        {
            if (!ACPI_IS_ASCII (Prefix[i]) ||
                !isalpha (Prefix[i]))
            {
                return;
            }
        }



        Op->Common.DisasmOpcode = ACPI_DASM_EISAID;
        break;

    default:
        break;
    }
}
