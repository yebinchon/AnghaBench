
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_PARSE_OBJECT ;


 int AML_COMMENT_CLOSE_BRACE ;
 int AML_COMMENT_ENDBLK ;
 int AcpiGbl_CaptureComments ;
 int AcpiOsPrintf (char*) ;
 int CvPrintOneCommentType (int *,int ,int *,int ) ;

void
CvCloseBraceWriteComment(
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level)
{

    if (!AcpiGbl_CaptureComments)
    {
        AcpiOsPrintf ("}");
        return;
    }

    CvPrintOneCommentType (Op, AML_COMMENT_ENDBLK, ((void*)0), Level);
    AcpiOsPrintf ("}");
    CvPrintOneCommentType (Op, AML_COMMENT_CLOSE_BRACE, ((void*)0), Level);
}
