
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {struct TYPE_4__* Next; int * Comment; } ;
typedef TYPE_1__ ACPI_COMMENT_NODE ;


 int AcpiDmIndent (int ) ;
 int AcpiGbl_RegCommentCache ;
 int AcpiOsPrintf (char*,int *) ;
 int AcpiOsReleaseObject (int ,TYPE_1__*) ;

void
CvPrintOneCommentList (
    ACPI_COMMENT_NODE *CommentList,
    UINT32 Level)
{
    ACPI_COMMENT_NODE *Current = CommentList;
    ACPI_COMMENT_NODE *Previous;


    while (Current)
    {
        Previous = Current;
        if (Current->Comment)
        {
            AcpiDmIndent(Level);
            AcpiOsPrintf("%s\n", Current->Comment);
            Current->Comment = ((void*)0);
        }

        Current = Current->Next;
        AcpiOsReleaseObject(AcpiGbl_RegCommentCache, Previous);
    }
}
