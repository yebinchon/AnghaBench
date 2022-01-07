
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT32 ;
typedef scalar_t__ UINT16 ;
struct TYPE_9__ {scalar_t__ Integer; } ;
struct TYPE_10__ {scalar_t__ ParseOpcode; TYPE_1__ Value; TYPE_3__* Child; } ;
struct TYPE_11__ {TYPE_2__ Asl; } ;
typedef int BOOLEAN ;
typedef scalar_t__ ACPI_SIZE ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ACPI_RESTAG_VENDORDATA ;
 scalar_t__ ACPI_UINT32_MAX ;
 int ASL_ERROR ;
 int ASL_MSG_BUFFER_LENGTH ;
 int ASL_MSG_LIST_LENGTH_LONG ;
 int ASL_MSG_LIST_LENGTH_SHORT ;
 int ASL_MSG_SYNTAX ;
 int ASL_REMARK ;
 int AslError (int ,int ,TYPE_3__*,char*) ;
 int FALSE ;
 scalar_t__ PARSEOP_DEFAULT_ARG ;
 TYPE_3__* RsCompleteNodeAndGetNext (TYPE_3__*) ;
 int RsCreateByteField (TYPE_3__*,int ,scalar_t__) ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
RsGetVendorData (
    ACPI_PARSE_OBJECT *InitializerOp,
    UINT8 *VendorData,
    ACPI_SIZE DescriptorOffset)
{
    ACPI_PARSE_OBJECT *BufferOp;
    UINT32 SpecifiedLength = ACPI_UINT32_MAX;
    UINT16 ActualLength = 0;




    if (InitializerOp->Asl.ParseOpcode == PARSEOP_DEFAULT_ARG)
    {
        return (FALSE);
    }

    BufferOp = InitializerOp->Asl.Child;
    if (!BufferOp)
    {
        AslError (ASL_ERROR, ASL_MSG_SYNTAX, InitializerOp, "");
        return (FALSE);
    }



    if (BufferOp->Asl.ParseOpcode != PARSEOP_DEFAULT_ARG)
    {
        SpecifiedLength = (UINT16) BufferOp->Asl.Value.Integer;
    }



    RsCreateByteField (InitializerOp, ACPI_RESTAG_VENDORDATA,
        (UINT16) DescriptorOffset);



    BufferOp = RsCompleteNodeAndGetNext (BufferOp);
    if (BufferOp->Asl.ParseOpcode != PARSEOP_DEFAULT_ARG)
    {
        while (BufferOp)
        {
            *VendorData = (UINT8) BufferOp->Asl.Value.Integer;
            VendorData++;
            ActualLength++;
            BufferOp = RsCompleteNodeAndGetNext (BufferOp);
        }
    }



    if ((SpecifiedLength == 0) ||
        ((SpecifiedLength == ACPI_UINT32_MAX) && (ActualLength == 0)))
    {
        AslError (ASL_ERROR, ASL_MSG_BUFFER_LENGTH, InitializerOp, ((void*)0));
        return (FALSE);
    }

    if (SpecifiedLength != ACPI_UINT32_MAX)
    {


        if (ActualLength > SpecifiedLength)
        {
            AslError (ASL_ERROR, ASL_MSG_LIST_LENGTH_LONG, InitializerOp, ((void*)0));
            return (FALSE);
        }



        else if (ActualLength < SpecifiedLength)
        {
            AslError (ASL_REMARK, ASL_MSG_LIST_LENGTH_SHORT, InitializerOp, ((void*)0));
            return (FALSE);
        }
    }

    return (TRUE);
}
