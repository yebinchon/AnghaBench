
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_7__ {scalar_t__ Integer; } ;
struct TYPE_8__ {TYPE_1__ Value; } ;
struct TYPE_9__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ASL_ERROR ;
 int ASL_MSG_RANGE ;
 int AslError (int ,int ,TYPE_3__*,int ) ;
 int AslGbl_MsgBuffer ;
 int sprintf (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;

ACPI_PARSE_OBJECT *
UtCheckIntegerRange (
    ACPI_PARSE_OBJECT *Op,
    UINT32 LowValue,
    UINT32 HighValue)
{

    if (!Op)
    {
        return (((void*)0));
    }

    if ((Op->Asl.Value.Integer < LowValue) ||
        (Op->Asl.Value.Integer > HighValue))
    {
        sprintf (AslGbl_MsgBuffer, "0x%X, allowable: 0x%X-0x%X",
            (UINT32) Op->Asl.Value.Integer, LowValue, HighValue);

        AslError (ASL_ERROR, ASL_MSG_RANGE, Op, AslGbl_MsgBuffer);
        return (((void*)0));
    }

    return (Op);
}
