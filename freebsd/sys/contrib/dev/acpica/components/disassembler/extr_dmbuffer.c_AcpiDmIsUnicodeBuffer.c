
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
typedef scalar_t__ UINT16 ;
struct TYPE_7__ {scalar_t__ Integer; TYPE_4__* Arg; } ;
struct TYPE_8__ {int DisasmFlags; TYPE_2__ Value; TYPE_4__* Next; } ;
struct TYPE_6__ {scalar_t__* Data; } ;
struct TYPE_9__ {TYPE_3__ Common; TYPE_1__ Named; } ;
typedef int BOOLEAN ;
typedef size_t ACPI_SIZE ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;


 int ACPI_DIV_2 (int) ;
 int ACPI_PARSEOP_IGNORE ;
 int FALSE ;
 int TRUE ;
 int isprint (scalar_t__) ;

BOOLEAN
AcpiDmIsUnicodeBuffer (
    ACPI_PARSE_OBJECT *Op)
{
    UINT8 *ByteData;
    UINT32 ByteCount;
    UINT32 WordCount;
    ACPI_PARSE_OBJECT *SizeOp;
    ACPI_PARSE_OBJECT *NextOp;
    UINT32 i;




    SizeOp = Op->Common.Value.Arg;



    NextOp = SizeOp->Common.Next;
    if (!NextOp)
    {
        return (FALSE);
    }



    ByteData = NextOp->Named.Data;
    ByteCount = (UINT32) NextOp->Common.Value.Integer;
    WordCount = ACPI_DIV_2 (ByteCount);





    if ((!ByteCount) ||
         (ByteCount < 4) ||
         (ByteCount & 1) ||
        ((UINT16 *) (void *) ByteData)[WordCount - 1] != 0)
    {
        return (FALSE);
    }







    for (i = 0; i < (ByteCount - 2); i += 2)
    {
        if ((ByteData[i] == 0) ||
            !(isprint (ByteData[i])) ||
            (ByteData[(ACPI_SIZE) i + 1] != 0))
        {
            return (FALSE);
        }
    }



    SizeOp->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
    return (TRUE);
}
