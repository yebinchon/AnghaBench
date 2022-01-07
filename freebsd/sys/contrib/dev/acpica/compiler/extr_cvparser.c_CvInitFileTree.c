
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
struct TYPE_6__ {char* FileStart; char* FileEnd; char* Filename; int IncludeWritten; int File; int * Parent; int * Next; } ;
struct TYPE_5__ {int Length; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;


 scalar_t__ AML_COMMENT_OP ;
 int AcpiGbl_CaptureComments ;
 char* AcpiGbl_CurrentFilename ;
 int AcpiGbl_FileCache ;
 TYPE_3__* AcpiGbl_FileTreeRoot ;
 int AcpiGbl_OutputFile ;
 char* AcpiGbl_RootFilename ;
 TYPE_3__* AcpiOsAcquireObject (int ) ;
 int CvAddToFileTree (char*,char*) ;
 int CvDbgPrint (char*,...) ;
 scalar_t__ CvIsFilename (char*) ;
 int CvSetFileParent (char*,char*) ;
 scalar_t__ FILENAME_COMMENT ;
 scalar_t__ PARENTFILENAME_COMMENT ;
 int TRUE ;

void
CvInitFileTree (
    ACPI_TABLE_HEADER *Table,
    UINT8 *AmlStart,
    UINT32 AmlLength)
{
    UINT8 *TreeAml;
    UINT8 *FileEnd;
    char *Filename = ((void*)0);
    char *PreviousFilename = ((void*)0);
    char *ParentFilename = ((void*)0);
    char *ChildFilename = ((void*)0);


    if (!AcpiGbl_CaptureComments)
    {
        return;
    }

    CvDbgPrint ("AmlLength: %x\n", AmlLength);
    CvDbgPrint ("AmlStart:  %p\n", AmlStart);
    CvDbgPrint ("AmlEnd?:   %p\n", AmlStart+AmlLength);

    AcpiGbl_FileTreeRoot = AcpiOsAcquireObject (AcpiGbl_FileCache);

    AcpiGbl_FileTreeRoot->FileStart = (char *)(AmlStart);
    AcpiGbl_FileTreeRoot->FileEnd = (char *)(AmlStart + Table->Length);
    AcpiGbl_FileTreeRoot->Next = ((void*)0);
    AcpiGbl_FileTreeRoot->Parent = ((void*)0);
    AcpiGbl_FileTreeRoot->Filename = (char *)(AmlStart+2);



    AcpiGbl_FileTreeRoot->File = AcpiGbl_OutputFile;





    AcpiGbl_FileTreeRoot->IncludeWritten = TRUE;
    Filename = ((void*)0);
    AcpiGbl_CurrentFilename = (char *)(AmlStart+2);
    AcpiGbl_RootFilename = (char *)(AmlStart+2);

    TreeAml = AmlStart;
    FileEnd = AmlStart + AmlLength;

    while (TreeAml <= FileEnd)
    {





        if ((*TreeAml == AML_COMMENT_OP) &&
            (*(TreeAml +1) == FILENAME_COMMENT) &&
            (CvIsFilename ((char *)(TreeAml +2))))
        {
            CvDbgPrint ("A9 and a 08 file\n");
            PreviousFilename = Filename;
            Filename = (char *) (TreeAml +2);

            CvAddToFileTree (Filename, PreviousFilename);
            ChildFilename = Filename;
            CvDbgPrint ("%s\n", Filename);
        }
        else if ((*TreeAml == AML_COMMENT_OP) &&
            (*(TreeAml +1) == PARENTFILENAME_COMMENT) &&
            (CvIsFilename ((char *)(TreeAml +2))))
        {
            CvDbgPrint ("A9 and a 09 file\n");
            ParentFilename = (char *)(TreeAml +2);
            CvSetFileParent (ChildFilename, ParentFilename);
            CvDbgPrint ("%s\n", ParentFilename);
        }

        ++TreeAml;
    }
}
