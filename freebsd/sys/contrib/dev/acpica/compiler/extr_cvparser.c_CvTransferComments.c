
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * EndBlkComment; int * CommentList; int * CloseBraceComment; int * EndNodeComment; int * InlineComment; } ;
struct TYPE_5__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int * AcpiGbl_CurrentCloseBraceComment ;
 int * AcpiGbl_CurrentEndNodeComment ;
 int * AcpiGbl_CurrentInlineComment ;
 int * AcpiGbl_EndBlkCommentListHead ;
 int * AcpiGbl_EndBlkCommentListTail ;
 int * AcpiGbl_RegCommentListHead ;
 int * AcpiGbl_RegCommentListTail ;

void
CvTransferComments (
    ACPI_PARSE_OBJECT *Op)
{

    Op->Common.InlineComment = AcpiGbl_CurrentInlineComment;
    AcpiGbl_CurrentInlineComment = ((void*)0);

    Op->Common.EndNodeComment = AcpiGbl_CurrentEndNodeComment;
    AcpiGbl_CurrentEndNodeComment = ((void*)0);

    Op->Common.CloseBraceComment = AcpiGbl_CurrentCloseBraceComment;
    AcpiGbl_CurrentCloseBraceComment = ((void*)0);

    Op->Common.CommentList = AcpiGbl_RegCommentListHead;
    AcpiGbl_RegCommentListHead = ((void*)0);
    AcpiGbl_RegCommentListTail = ((void*)0);

    Op->Common.EndBlkComment = AcpiGbl_EndBlkCommentListHead;
    AcpiGbl_EndBlkCommentListHead = ((void*)0);
    AcpiGbl_EndBlkCommentListTail = ((void*)0);
}
