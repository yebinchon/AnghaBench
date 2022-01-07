
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ Class; } ;
struct TYPE_8__ {scalar_t__ AmlOpcode; } ;
struct TYPE_10__ {TYPE_1__ Asl; } ;
struct TYPE_9__ {void* ShouldBeSerialized; int Op; void* CreatesNamedObjects; } ;
typedef TYPE_2__ ASL_METHOD_INFO ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;
typedef TYPE_4__ ACPI_OPCODE_INFO ;


 scalar_t__ AML_CLASS_NAMED_OBJECT ;
 scalar_t__ AML_METHOD_OP ;
 scalar_t__ AML_SCOPE_OP ;
 int ASL_MSG_SERIALIZED_REQUIRED ;
 int ASL_REMARK ;
 TYPE_4__* AcpiPsGetOpcodeInfo (scalar_t__) ;
 int AslError (int ,int ,int ,char*) ;
 void* TRUE ;

__attribute__((used)) static void
MtCheckNamedObjectInMethod (
    ACPI_PARSE_OBJECT *Op,
    ASL_METHOD_INFO *MethodInfo)
{
    const ACPI_OPCODE_INFO *OpInfo;




    if ((Op->Asl.AmlOpcode == AML_METHOD_OP) ||
        (Op->Asl.AmlOpcode == AML_SCOPE_OP))
    {
        return;
    }



    if (!MethodInfo)
    {
        return;
    }

    OpInfo = AcpiPsGetOpcodeInfo (Op->Asl.AmlOpcode);
    if (OpInfo->Class == AML_CLASS_NAMED_OBJECT)
    {
        MethodInfo->CreatesNamedObjects = TRUE;
        if (!MethodInfo->ShouldBeSerialized)
        {
            AslError (ASL_REMARK, ASL_MSG_SERIALIZED_REQUIRED, MethodInfo->Op,
                "due to creation of named objects within");



            MethodInfo->ShouldBeSerialized = TRUE;
        }
    }
}
