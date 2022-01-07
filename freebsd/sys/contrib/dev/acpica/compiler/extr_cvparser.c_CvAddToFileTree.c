
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* FileEnd; char* Filename; char* FileStart; int File; int IncludeWritten; struct TYPE_6__* Parent; struct TYPE_6__* Next; } ;
typedef TYPE_1__ ACPI_FILE_NODE ;


 int ASL_ERROR ;
 int ASL_FILE_AML_OUTPUT ;
 int ASL_MSG_OPEN ;
 int AcpiGbl_FileCache ;
 TYPE_1__* AcpiGbl_FileTreeRoot ;
 int AcpiGbl_RootFilename ;
 TYPE_1__* AcpiOsAcquireObject (int ) ;
 int AcpiUtStricmp (char*,int ) ;
 int AslAbort () ;
 int AslCommonError (int ,int ,int ,int ,int ,int ,int *,int ) ;
 int AslGbl_MsgBuffer ;
 TYPE_1__* CvFilenameExists (char*,TYPE_1__*) ;
 int FALSE ;
 int FlDeleteFile (int ) ;
 int errno ;
 int fopen (char*,char*) ;
 int sprintf (int ,char*,char*,char*) ;
 char* strerror (int ) ;

__attribute__((used)) static void
CvAddToFileTree (
    char *Filename,
    char *PreviousFilename)
{
    ACPI_FILE_NODE *Node;


    if (!AcpiUtStricmp(Filename, AcpiGbl_RootFilename) &&
        PreviousFilename)
    {
        Node = CvFilenameExists (PreviousFilename, AcpiGbl_FileTreeRoot);
        if (Node)
        {




            Node->FileEnd = Filename;
        }
    }
    else if (!AcpiUtStricmp(Filename, AcpiGbl_RootFilename) &&
             !PreviousFilename)
    {
        return;
    }

    Node = CvFilenameExists (Filename, AcpiGbl_FileTreeRoot);
    if (Node && PreviousFilename)
    {





        Node = CvFilenameExists (PreviousFilename, AcpiGbl_FileTreeRoot);
        if (Node && (Node->FileEnd < Filename))
        {
            Node->FileEnd = Filename;
            Node = Node->Parent;
            while (Node)
            {
                if (Node->FileEnd < Filename)
                {
                    Node->FileEnd = Filename;
                }

                Node = Node->Parent;
            }
        }
    }
    else
    {
        Node = AcpiGbl_FileTreeRoot;
        AcpiGbl_FileTreeRoot = AcpiOsAcquireObject (AcpiGbl_FileCache);

        AcpiGbl_FileTreeRoot->Next = Node;
        AcpiGbl_FileTreeRoot->Parent = ((void*)0);
        AcpiGbl_FileTreeRoot->Filename = Filename;
        AcpiGbl_FileTreeRoot->FileStart = Filename;
        AcpiGbl_FileTreeRoot->IncludeWritten = FALSE;
        AcpiGbl_FileTreeRoot->File = fopen(Filename, "w+");





        if (!AcpiGbl_FileTreeRoot->File)
        {


            FlDeleteFile (ASL_FILE_AML_OUTPUT);
            sprintf (AslGbl_MsgBuffer, "\"%s\" - %s", Filename, strerror (errno));
            AslCommonError (ASL_ERROR, ASL_MSG_OPEN, 0, 0, 0, 0,
                ((void*)0), AslGbl_MsgBuffer);
            AslAbort ();
        }
    }
}
