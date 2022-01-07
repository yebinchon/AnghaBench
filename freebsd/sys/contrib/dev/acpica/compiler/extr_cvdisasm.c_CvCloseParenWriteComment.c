
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_6__ {scalar_t__ AmlOpcode; TYPE_2__* Parent; scalar_t__ EndNodeComment; } ;
struct TYPE_7__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int AML_COMMENT_ENDBLK ;
 int AML_COMMENT_END_NODE ;
 scalar_t__ AML_IF_OP ;
 scalar_t__ AcpiDmBlockType (TYPE_2__*) ;
 int AcpiGbl_CaptureComments ;
 int AcpiOsPrintf (char*) ;
 scalar_t__ BLOCK_PAREN ;
 int CvPrintOneCommentType (TYPE_2__*,int ,int *,int ) ;

void
CvCloseParenWriteComment(
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level)
{

    if (!AcpiGbl_CaptureComments)
    {
        AcpiOsPrintf (")");
        return;
    }





    if (AcpiDmBlockType (Op) == BLOCK_PAREN)
    {
        CvPrintOneCommentType (Op, AML_COMMENT_ENDBLK, ((void*)0), Level);
    }

    AcpiOsPrintf (")");

    if (Op->Common.EndNodeComment)
    {
        CvPrintOneCommentType (Op, AML_COMMENT_END_NODE, ((void*)0), Level);
    }
    else if ((Op->Common.Parent->Common.AmlOpcode == AML_IF_OP) &&
         Op->Common.Parent->Common.EndNodeComment)
    {
        CvPrintOneCommentType (Op->Common.Parent,
            AML_COMMENT_END_NODE, ((void*)0), Level);
    }
}
