
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_92__ TYPE_86__ ;
typedef struct TYPE_91__ TYPE_5__ ;
typedef struct TYPE_90__ TYPE_4__ ;
typedef struct TYPE_89__ TYPE_3__ ;
typedef struct TYPE_88__ TYPE_2__ ;
typedef struct TYPE_87__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_87__ {int Integer; } ;
struct TYPE_88__ {int ParseOpcode; char* ParseOpName; int Extra; int FinalAmlLength; TYPE_1__ Value; int CompileFlags; } ;
struct TYPE_92__ {TYPE_2__ Asl; } ;
struct TYPE_91__ {int DescriptorType; } ;
struct TYPE_90__ {TYPE_86__* DescriptorTypeOp; int CurrentByteOffset; } ;
struct TYPE_89__ {scalar_t__ Buffer; int BufferLength; } ;
typedef TYPE_3__ ASL_RESOURCE_NODE ;
typedef TYPE_4__ ASL_RESOURCE_INFO ;
typedef TYPE_5__ AML_RESOURCE ;





 int ASL_ERROR ;
 int ASL_MSG_DEPENDENT_NESTING ;
 int ASL_MSG_MISSING_STARTDEPENDENT ;
 int AslError (int ,int ,TYPE_86__*,int *) ;
 int OP_IS_RESOURCE_DESC ;
 TYPE_3__* RsDoDmaDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoDwordIoDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoDwordMemoryDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoDwordSpaceDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoEndDependentDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoEndTagDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoExtendedIoDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoExtendedMemoryDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoExtendedSpaceDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoFixedDmaDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoFixedIoDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoGeneralRegisterDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoGpioIntDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoGpioIoDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoI2cSerialBusDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoInterruptDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoIoDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoIrqDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoIrqNoFlagsDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoMemory24Descriptor (TYPE_4__*) ;
 TYPE_3__* RsDoMemory32Descriptor (TYPE_4__*) ;
 TYPE_3__* RsDoMemory32FixedDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoPinConfigDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoPinFunctionDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoPinGroupConfigDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoPinGroupDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoPinGroupFunctionDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoQwordIoDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoQwordMemoryDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoQwordSpaceDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoSpiSerialBusDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoStartDependentDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoStartDependentNoPriDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoUartSerialBusDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoVendorLargeDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoVendorSmallDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoWordBusNumberDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoWordIoDescriptor (TYPE_4__*) ;
 TYPE_3__* RsDoWordSpaceDescriptor (TYPE_4__*) ;
 int printf (char*,char*) ;

ASL_RESOURCE_NODE *
RsDoOneResourceDescriptor (
    ASL_RESOURCE_INFO *Info,
    UINT8 *State)
{
    ASL_RESOURCE_NODE *Rnode = ((void*)0);




    switch (Info->DescriptorTypeOp->Asl.ParseOpcode)
    {
    case 169:

        Rnode = RsDoDmaDescriptor (Info);
        break;

    case 160:

        Rnode = RsDoFixedDmaDescriptor (Info);
        break;

    case 168:

        Rnode = RsDoDwordIoDescriptor (Info);
        break;

    case 167:

        Rnode = RsDoDwordMemoryDescriptor (Info);
        break;

    case 166:

        Rnode = RsDoDwordSpaceDescriptor (Info);
        break;

    case 165:

        switch (*State)
        {
        case 172:

            AslError (ASL_ERROR, ASL_MSG_MISSING_STARTDEPENDENT,
                Info->DescriptorTypeOp, ((void*)0));
            break;

        case 171:

            AslError (ASL_ERROR, ASL_MSG_DEPENDENT_NESTING,
                Info->DescriptorTypeOp, ((void*)0));
            break;

        case 173:
        default:

            break;
        }

        *State = 172;
        Rnode = RsDoEndDependentDescriptor (Info);
        break;

    case 164:

        Rnode = RsDoEndTagDescriptor (Info);
        break;

    case 163:

        Rnode = RsDoExtendedIoDescriptor (Info);
        break;

    case 162:

        Rnode = RsDoExtendedMemoryDescriptor (Info);
        break;

    case 161:

        Rnode = RsDoExtendedSpaceDescriptor (Info);
        break;

    case 159:

        Rnode = RsDoFixedIoDescriptor (Info);
        break;

    case 154:

        Rnode = RsDoInterruptDescriptor (Info);
        break;

    case 153:

        Rnode = RsDoIoDescriptor (Info);
        break;

    case 152:

        Rnode = RsDoIrqDescriptor (Info);
        break;

    case 151:

        Rnode = RsDoIrqNoFlagsDescriptor (Info);
        break;

    case 150:

        Rnode = RsDoMemory24Descriptor (Info);
        break;

    case 149:

        Rnode = RsDoMemory32Descriptor (Info);
        break;

    case 148:

        Rnode = RsDoMemory32FixedDescriptor (Info);
        break;

    case 142:

        Rnode = RsDoQwordIoDescriptor (Info);
        break;

    case 141:

        Rnode = RsDoQwordMemoryDescriptor (Info);
        break;

    case 140:

        Rnode = RsDoQwordSpaceDescriptor (Info);
        break;

    case 139:

        Rnode = RsDoGeneralRegisterDescriptor (Info);
        break;

    case 136:

        switch (*State)
        {
        case 171:

            AslError (ASL_ERROR, ASL_MSG_DEPENDENT_NESTING,
                Info->DescriptorTypeOp, ((void*)0));
            break;

        case 172:
        case 173:
        default:

            break;
        }

        *State = 171;
        Rnode = RsDoStartDependentDescriptor (Info);
        *State = 173;
        break;

    case 135:

        switch (*State)
        {
        case 171:

            AslError (ASL_ERROR, ASL_MSG_DEPENDENT_NESTING,
                Info->DescriptorTypeOp, ((void*)0));
            break;

        case 172:
        case 173:
        default:

            break;
        }

        *State = 171;
        Rnode = RsDoStartDependentNoPriDescriptor (Info);
        *State = 173;
        break;

    case 132:

        Rnode = RsDoVendorLargeDescriptor (Info);
        break;

    case 131:

        Rnode = RsDoVendorSmallDescriptor (Info);
        break;

    case 130:

        Rnode = RsDoWordBusNumberDescriptor (Info);
        break;

    case 129:

        Rnode = RsDoWordIoDescriptor (Info);
        break;

    case 128:

        Rnode = RsDoWordSpaceDescriptor (Info);
        break;

    case 158:

        Rnode = RsDoGpioIntDescriptor (Info);
        break;

    case 157:

        Rnode = RsDoGpioIoDescriptor (Info);
        break;

    case 156:
    case 155:

        Rnode = RsDoI2cSerialBusDescriptor (Info);
        break;

    case 138:
    case 137:

        Rnode = RsDoSpiSerialBusDescriptor (Info);
        break;

    case 134:
    case 133:

        Rnode = RsDoUartSerialBusDescriptor (Info);
        break;

    case 147:

        Rnode = RsDoPinConfigDescriptor (Info);
        break;

    case 146:

        Rnode = RsDoPinFunctionDescriptor (Info);
        break;

    case 145:

        Rnode = RsDoPinGroupDescriptor (Info);
        break;

    case 143:

        Rnode = RsDoPinGroupFunctionDescriptor (Info);
        break;

    case 144:

        Rnode = RsDoPinGroupConfigDescriptor (Info);
        break;

    case 170:


        break;

    default:

        printf ("Unknown resource descriptor type [%s]\n",
            Info->DescriptorTypeOp->Asl.ParseOpName);
        break;
    }






    Info->DescriptorTypeOp->Asl.ParseOpcode = 170;
    Info->DescriptorTypeOp->Asl.CompileFlags = OP_IS_RESOURCE_DESC;
    Info->DescriptorTypeOp->Asl.Value.Integer = Info->CurrentByteOffset;

    if (Rnode)
    {
        Info->DescriptorTypeOp->Asl.FinalAmlLength = Rnode->BufferLength;
        Info->DescriptorTypeOp->Asl.Extra =
            ((AML_RESOURCE *) Rnode->Buffer)->DescriptorType;
    }

    return (Rnode);
}
