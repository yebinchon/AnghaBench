
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char UINT8 ;
typedef int ACPI_PARSE_OBJECT ;


 int AML_COMMENT_OP ;
 int CgLocalWriteAmlData (int *,char*,int) ;
 int strlen (char*) ;

void
CgWriteOneAmlComment(
    ACPI_PARSE_OBJECT *Op,
    char* CommentToPrint,
    UINT8 InputOption)
{
    UINT8 CommentOption = InputOption;
    UINT8 CommentOpcode = (UINT8) AML_COMMENT_OP;


    if (!CommentToPrint)
    {
        return;
    }

    CgLocalWriteAmlData (Op, &CommentOpcode, 1);
    CgLocalWriteAmlData (Op, &CommentOption, 1);



    CgLocalWriteAmlData (Op, CommentToPrint, strlen (CommentToPrint) + 1);
}
