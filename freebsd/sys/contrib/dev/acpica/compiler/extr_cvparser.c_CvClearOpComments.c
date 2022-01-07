
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * CvParentFilename; int * CvFilename; int * CloseBraceComment; int * EndBlkComment; int * CommentList; int * NameComment; int * EndNodeComment; int * InlineComment; } ;
struct TYPE_5__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;



void
CvClearOpComments (
    ACPI_PARSE_OBJECT *Op)
{

    Op->Common.InlineComment = ((void*)0);
    Op->Common.EndNodeComment = ((void*)0);
    Op->Common.NameComment = ((void*)0);
    Op->Common.CommentList = ((void*)0);
    Op->Common.EndBlkComment = ((void*)0);
    Op->Common.CloseBraceComment = ((void*)0);
    Op->Common.CvFilename = ((void*)0);
    Op->Common.CvParentFilename = ((void*)0);
}
