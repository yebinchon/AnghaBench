
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_10__ {scalar_t__ ParseOpcode; scalar_t__ AmlSubtreeLength; scalar_t__ AmlPkgLenBytes; scalar_t__ AmlOpcodeLength; scalar_t__ AmlLength; TYPE_2__* Parent; } ;
struct TYPE_11__ {TYPE_3__ Asl; } ;
struct TYPE_8__ {int AmlSubtreeLength; } ;
struct TYPE_9__ {TYPE_1__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;


 int AE_OK ;
 int CgGenerateAmlLengths (TYPE_4__*) ;
 scalar_t__ CvCalculateCommentLengths (TYPE_4__*) ;
 scalar_t__ PARSEOP_DEFAULT_ARG ;

ACPI_STATUS
LnPackageLengthWalk (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{



    CgGenerateAmlLengths (Op);



    if ((Op->Asl.Parent) &&
        (Op->Asl.ParseOpcode != PARSEOP_DEFAULT_ARG))
    {
        Op->Asl.Parent->Asl.AmlSubtreeLength += (
            Op->Asl.AmlLength +
            Op->Asl.AmlOpcodeLength +
            Op->Asl.AmlPkgLenBytes +
            Op->Asl.AmlSubtreeLength +
            CvCalculateCommentLengths (Op)
        );
    }
    return (AE_OK);
}
