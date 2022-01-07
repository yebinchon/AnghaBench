
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_5__ {scalar_t__ Integer; } ;
struct TYPE_6__ {scalar_t__ ParseOpcode; TYPE_1__ Value; } ;
struct TYPE_7__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 scalar_t__ PARSEOP_DEFAULT_ARG ;

void
RsSetFlagBits16 (
    UINT16 *Flags,
    ACPI_PARSE_OBJECT *Op,
    UINT8 Position,
    UINT8 DefaultBit)
{

    if (Op->Asl.ParseOpcode == PARSEOP_DEFAULT_ARG)
    {


        *Flags |= (DefaultBit << Position);
    }
    else
    {


        *Flags |= (((UINT16) Op->Asl.Value.Integer) << Position);
    }
}
