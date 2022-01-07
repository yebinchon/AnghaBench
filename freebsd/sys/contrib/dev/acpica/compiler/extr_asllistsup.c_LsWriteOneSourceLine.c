
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char UINT8 ;
typedef int UINT32 ;
struct TYPE_2__ {int LineNumber; int Filename; } ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ AE_OK ;
 int ASL_FILE_ASM_SOURCE_OUTPUT ;
 int ASL_FILE_C_SOURCE_OUTPUT ;
 int ASL_FILE_SOURCE_OUTPUT ;
 char* ASL_LISTING_LINE_PREFIX ;
 scalar_t__ AslGbl_HasIncludeFiles ;
 TYPE_1__* AslGbl_ListingNode ;
 int AslGbl_SourceLine ;
 scalar_t__ FALSE ;
 int FlPrintFile (int,char*,...) ;
 scalar_t__ FlReadFile (int ,char*,int) ;
 int FlWriteFile (int,char*,int) ;
 int LsCheckException (int,int) ;
 scalar_t__ TRUE ;

UINT32
LsWriteOneSourceLine (
    UINT32 FileId)
{
    UINT8 FileByte;
    UINT32 Column = 0;
    UINT32 Index = 16;
    BOOLEAN StartOfLine = FALSE;
    BOOLEAN ProcessLongLine = FALSE;


    AslGbl_SourceLine++;
    AslGbl_ListingNode->LineNumber++;



    if (FlReadFile (ASL_FILE_SOURCE_OUTPUT, &FileByte, 1) != AE_OK)
    {
        return (0);
    }
    if (FileByte == '\n')
    {
        return (1);
    }
    if (FileId == ASL_FILE_C_SOURCE_OUTPUT)
    {
        FlPrintFile (FileId, "     *");
    }
    if (FileId == ASL_FILE_ASM_SOURCE_OUTPUT)
    {
        FlPrintFile (FileId, "; ");
    }

    if (AslGbl_HasIncludeFiles)
    {




        FlPrintFile (FileId, "%12s %5d%s",
            AslGbl_ListingNode->Filename, AslGbl_ListingNode->LineNumber,
            ASL_LISTING_LINE_PREFIX);
    }
    else
    {


        FlPrintFile (FileId, "%8u%s", AslGbl_SourceLine,
            ASL_LISTING_LINE_PREFIX);
    }



    do
    {
        if (FileId == ASL_FILE_C_SOURCE_OUTPUT)
        {
            if (FileByte == '/')
            {
                FileByte = '*';
            }
        }



        Column++;
        if (Column >= 128)
        {
            if (!ProcessLongLine)
            {
                if ((FileByte != '}') &&
                    (FileByte != '{'))
                {
                    goto WriteByte;
                }

                ProcessLongLine = TRUE;
            }

            if (FileByte == '{')
            {
                FlPrintFile (FileId, "\n%*s{\n", Index, " ");
                StartOfLine = TRUE;
                Index += 4;
                continue;
            }

            else if (FileByte == '}')
            {
                if (!StartOfLine)
                {
                    FlPrintFile (FileId, "\n");
                }

                StartOfLine = TRUE;
                Index -= 4;
                FlPrintFile (FileId, "%*s}\n", Index, " ");
                continue;
            }



            else if ((FileByte == ' ') && StartOfLine)
            {
                continue;
            }

            else if (StartOfLine)
            {
                StartOfLine = FALSE;
                FlPrintFile (FileId, "%*s", Index, " ");
            }

WriteByte:
            FlWriteFile (FileId, &FileByte, 1);
            if (FileByte == '\n')
            {





                LsCheckException (AslGbl_SourceLine, FileId);
                return (1);
            }
        }
        else
        {
            FlWriteFile (FileId, &FileByte, 1);
            if (FileByte == '\n')
            {





                LsCheckException (AslGbl_SourceLine, FileId);
                return (1);
            }
        }

    } while (FlReadFile (ASL_FILE_SOURCE_OUTPUT, &FileByte, 1) == AE_OK);



    return (0);
}
