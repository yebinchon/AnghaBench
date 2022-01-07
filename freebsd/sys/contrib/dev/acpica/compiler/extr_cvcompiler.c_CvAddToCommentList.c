
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* Comment; struct TYPE_3__* Next; } ;


 TYPE_1__* AslGbl_CommentListHead ;
 TYPE_1__* AslGbl_CommentListTail ;
 void* CvCommentNodeCalloc () ;

void
CvAddToCommentList (
    char *ToAdd)
{

   if (AslGbl_CommentListHead)
   {
       AslGbl_CommentListTail->Next = CvCommentNodeCalloc ();
       AslGbl_CommentListTail = AslGbl_CommentListTail->Next;
   }
   else
   {
       AslGbl_CommentListHead = CvCommentNodeCalloc ();
       AslGbl_CommentListTail = AslGbl_CommentListHead;
   }

   AslGbl_CommentListTail->Comment = ToAdd;
}
