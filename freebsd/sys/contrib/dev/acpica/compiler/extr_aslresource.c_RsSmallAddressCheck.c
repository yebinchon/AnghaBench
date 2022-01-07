
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_9__ {int ExternalName; } ;
struct TYPE_10__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_RESOURCE_NAME_IO ;
 scalar_t__ ACPI_RESOURCE_NAME_MEMORY24 ;
 scalar_t__ ACPI_UINT16_MAX ;
 int ASL_ERROR ;
 int ASL_MSG_ALIGNMENT ;
 int ASL_MSG_INVALID_LENGTH ;
 int ASL_MSG_INVALID_MIN_MAX ;
 int ASL_MSG_NULL_DESCRIPTOR ;
 int AslError (int ,int ,TYPE_2__*,int *) ;
 scalar_t__ AslGbl_NoResourceChecking ;

void
RsSmallAddressCheck (
    UINT8 Type,
    UINT32 Minimum,
    UINT32 Maximum,
    UINT32 Length,
    UINT32 Alignment,
    ACPI_PARSE_OBJECT *MinOp,
    ACPI_PARSE_OBJECT *MaxOp,
    ACPI_PARSE_OBJECT *LengthOp,
    ACPI_PARSE_OBJECT *AlignOp,
    ACPI_PARSE_OBJECT *Op)
{

    if (AslGbl_NoResourceChecking)
    {
        return;
    }
    if (!Minimum && !Maximum && !Length)
    {
        if (!Op->Asl.ExternalName)
        {


            AslError (ASL_ERROR, ASL_MSG_NULL_DESCRIPTOR, Op, ((void*)0));
        }

        return;
    }





    if (Type != ACPI_RESOURCE_NAME_IO)
    {


        if (Minimum > Maximum)
        {
            AslError (ASL_ERROR, ASL_MSG_INVALID_MIN_MAX, MinOp, ((void*)0));
        }
        else if (Length > (Maximum - Minimum + 1))
        {
            AslError (ASL_ERROR, ASL_MSG_INVALID_LENGTH, LengthOp, ((void*)0));
        }



        if (Type == ACPI_RESOURCE_NAME_MEMORY24)
        {
            if (!Alignment)
            {
                Alignment = ACPI_UINT16_MAX + 1;
            }

            Minimum <<= 8;
            Maximum <<= 8;
        }
    }



    if (!Alignment)
    {
        Alignment = 1;
    }



    if (Minimum % Alignment)
    {
        AslError (ASL_ERROR, ASL_MSG_ALIGNMENT, MinOp, ((void*)0));
    }
    if (Maximum % Alignment)
    {
        AslError (ASL_ERROR, ASL_MSG_ALIGNMENT, MaxOp, ((void*)0));
    }
}
