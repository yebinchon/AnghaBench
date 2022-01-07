
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_7__ {scalar_t__ Integer; TYPE_4__* Arg; } ;
struct TYPE_8__ {TYPE_2__ Value; TYPE_4__* Next; } ;
struct TYPE_6__ {int* Data; } ;
struct TYPE_9__ {TYPE_3__ Common; TYPE_1__ Named; } ;
typedef int BOOLEAN ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;


 int FALSE ;
 int TRUE ;
 int isprint (int) ;

BOOLEAN
AcpiDmIsStringBuffer (
    ACPI_PARSE_OBJECT *Op)
{
    UINT8 *ByteData;
    UINT32 ByteCount;
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



    if ((!ByteCount) ||
         (ByteCount < 2) ||
         (ByteData[ByteCount-1] != 0))
    {
        return (FALSE);
    }






    if ((ByteCount == 2) && (ByteData[0] == 0x79))
    {
        return (FALSE);
    }



    for (i = 0; i < (ByteCount - 1); i++)
    {







        if (!isprint (ByteData[i]))
        {
            return (FALSE);
        }
    }

    return (TRUE);
}
