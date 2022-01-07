
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_7__ {scalar_t__ Integer; TYPE_4__* Arg; } ;
struct TYPE_8__ {int DisasmFlags; TYPE_2__ Value; TYPE_4__* Next; } ;
struct TYPE_6__ {int* Data; } ;
struct TYPE_9__ {TYPE_3__ Common; TYPE_1__ Named; } ;
typedef int BOOLEAN ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;


 int ACPI_PARSEOP_IGNORE ;
 int FALSE ;
 int TRUE ;
 scalar_t__ UUID_BUFFER_LENGTH ;

BOOLEAN
AcpiDmIsUuidBuffer (
    ACPI_PARSE_OBJECT *Op)
{
    UINT8 *ByteData;
    UINT32 ByteCount;
    ACPI_PARSE_OBJECT *SizeOp;
    ACPI_PARSE_OBJECT *NextOp;




    SizeOp = Op->Common.Value.Arg;



    NextOp = SizeOp->Common.Next;
    if (!NextOp)
    {
        return (FALSE);
    }



    ByteData = NextOp->Named.Data;
    ByteCount = (UINT32) NextOp->Common.Value.Integer;



    if (ByteCount != UUID_BUFFER_LENGTH)
    {
        return (FALSE);
    }



    if (((ByteData[7] & 0xF0) == 0x00) ||
        ((ByteData[7] & 0xF0) > 0x50) ||
        ((ByteData[8] & 0xF0) < 0x80) ||
        ((ByteData[8] & 0xF0) > 0xB0))
    {
        return (FALSE);
    }



    SizeOp->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
    return (TRUE);
}
