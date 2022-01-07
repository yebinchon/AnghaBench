
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_9__ {int Filename; int File; struct TYPE_9__* Parent; } ;
struct TYPE_7__ {char* CvFilename; } ;
struct TYPE_8__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
typedef TYPE_3__ ACPI_FILE_NODE ;


 int ASL_ERROR ;
 int ASL_FILE_AML_OUTPUT ;
 int ASL_MSG_OPEN ;
 int AcpiGbl_CurrentFilename ;
 int AcpiGbl_FileTreeRoot ;
 int AcpiOsRedirectOutput (int ) ;
 scalar_t__ AcpiUtStricmp (int ,int ) ;
 int AslAbort () ;
 int AslCommonError (int ,int ,int ,int ,int ,int ,int *,int ) ;
 int AslGbl_MsgBuffer ;
 int CvDbgPrint (char*,int ,char*) ;
 TYPE_3__* CvFilenameExists (char*,int ) ;
 int CvPrintInclude (TYPE_3__*,int ) ;
 int FlDeleteFile (int ) ;
 int errno ;
 int sprintf (int ,char*,char*,char*) ;
 char* strerror (int ) ;

void
CvSwitchFiles(
    UINT32 Level,
    ACPI_PARSE_OBJECT *Op)
{
    char *Filename = Op->Common.CvFilename;
    ACPI_FILE_NODE *FNode;
    ACPI_FILE_NODE *Current;


    CvDbgPrint ("Switching from %s to %s\n", AcpiGbl_CurrentFilename,
        Filename);
    FNode = CvFilenameExists (Filename, AcpiGbl_FileTreeRoot);
    if (!FNode)
    {




        FlDeleteFile (ASL_FILE_AML_OUTPUT);
        sprintf (AslGbl_MsgBuffer, "\"Cannot find %s\" - %s",
            Filename, strerror (errno));
        AslCommonError (ASL_ERROR, ASL_MSG_OPEN, 0, 0, 0, 0,
            ((void*)0), AslGbl_MsgBuffer);
        AslAbort ();
    }

    Current = FNode;






    while (Current &&
           Current->Parent &&
           AcpiUtStricmp (Current->Filename, AcpiGbl_CurrentFilename))
    {
        CvPrintInclude (Current, Level);
        Current = Current->Parent;
    }

    if (FNode)
    {


        AcpiOsRedirectOutput (FNode->File);
        AcpiGbl_CurrentFilename = FNode->Filename;
    }
}
