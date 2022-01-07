
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Next; } ;
typedef int BOOLEAN ;
typedef TYPE_1__ ACPI_COMMENT_NODE ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
CvListIsSingleton (
    ACPI_COMMENT_NODE *CommentList)

{

    if (!CommentList)
    {
        return (FALSE);
    }
    else if (CommentList->Next)
    {
        return (FALSE);
    }

    return (TRUE);
}
