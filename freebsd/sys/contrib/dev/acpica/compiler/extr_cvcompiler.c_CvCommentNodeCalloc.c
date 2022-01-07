
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * Next; } ;
typedef TYPE_1__ ACPI_COMMENT_NODE ;


 TYPE_1__* UtLocalCalloc (int) ;

ACPI_COMMENT_NODE *
CvCommentNodeCalloc (
    void)
{
   ACPI_COMMENT_NODE *NewCommentNode;


   NewCommentNode = UtLocalCalloc (sizeof (ACPI_COMMENT_NODE));
   NewCommentNode->Next = ((void*)0);
   return (NewCommentNode);
}
