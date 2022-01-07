
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {scalar_t__ IncludeWritten; int Filename; int IncludeComment; TYPE_1__* Parent; } ;
struct TYPE_4__ {int File; int Filename; } ;
typedef TYPE_2__ ACPI_FILE_NODE ;


 int AcpiDmIndent (int ) ;
 int AcpiOsPrintf (char*,int ) ;
 int AcpiOsRedirectOutput (int ) ;
 int CvDbgPrint (char*,int ,...) ;
 int CvPrintOneCommentList (int ,int ) ;
 scalar_t__ TRUE ;

__attribute__((used)) static void
CvPrintInclude(
    ACPI_FILE_NODE *FNode,
    UINT32 Level)
{

    if (!FNode || FNode->IncludeWritten)
    {
        return;
    }

    CvDbgPrint ("Writing include for %s within %s\n",
        FNode->Filename, FNode->Parent->Filename);
    AcpiOsRedirectOutput (FNode->Parent->File);
    CvPrintOneCommentList (FNode->IncludeComment, Level);

    AcpiDmIndent (Level);
    AcpiOsPrintf ("Include (\"%s\")\n", FNode->Filename);
    CvDbgPrint ("emitted the following: Include (\"%s\")\n",
        FNode->Filename);
    FNode->IncludeWritten = TRUE;
}
