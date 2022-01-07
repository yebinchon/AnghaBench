
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_8__ {char* Comment; struct TYPE_8__* Next; } ;
struct TYPE_6__ {scalar_t__ ParseOpcode; char* CloseBraceComment; TYPE_3__* CommentList; int Filename; } ;
struct TYPE_7__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
typedef TYPE_3__ ACPI_COMMENT_NODE ;


 int AcpiGbl_CaptureComments ;
 int CgWriteOneAmlComment (TYPE_2__*,char*,int ) ;
 int CvDbgPrint (char*,...) ;
 int END_DEFBLK_COMMENT ;
 int FILENAME_COMMENT ;
 char* FILE_SUFFIX_DISASSEMBLY ;
 scalar_t__ PARSEOP_DEFINITION_BLOCK ;
 int STD_DEFBLK_COMMENT ;
 char* UtLocalCacheCalloc (int ) ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;
 char* strrchr (char*,char) ;

void
CgWriteAmlDefBlockComment(
    ACPI_PARSE_OBJECT *Op)
{
    UINT8 CommentOption;
    ACPI_COMMENT_NODE *Current;
    char *NewFilename;
    char *Position;
    char *DirectoryPosition;


    if (!AcpiGbl_CaptureComments ||
        (Op->Asl.ParseOpcode != PARSEOP_DEFINITION_BLOCK))
    {
        return;
    }

    CvDbgPrint ("Printing comments for a definition block..\n");



    NewFilename = UtLocalCacheCalloc (strlen (Op->Asl.Filename));
    strcpy (NewFilename, Op->Asl.Filename);
    DirectoryPosition = strrchr (NewFilename, '/');
    Position = strrchr (NewFilename, '.');

    if (Position && (Position > DirectoryPosition))
    {


        Position++;
        *Position = 0;
        strcat (Position, FILE_SUFFIX_DISASSEMBLY);
    }
    else
    {


        strcat (NewFilename, ".");
        strcat (NewFilename, FILE_SUFFIX_DISASSEMBLY);
    }

    CommentOption = FILENAME_COMMENT;
    CgWriteOneAmlComment(Op, NewFilename, CommentOption);

    Current = Op->Asl.CommentList;
    CommentOption = STD_DEFBLK_COMMENT;

    while (Current)
    {
        CgWriteOneAmlComment(Op, Current->Comment, CommentOption);
        CvDbgPrint ("Printing comment: %s\n", Current->Comment);
        Current = Current->Next;
    }

    Op->Asl.CommentList = ((void*)0);



    if (Op->Asl.CloseBraceComment)
    {
        CommentOption = END_DEFBLK_COMMENT;
        CgWriteOneAmlComment(Op, Op->Asl.CloseBraceComment, CommentOption);
        Op->Asl.CloseBraceComment = ((void*)0);
    }
}
