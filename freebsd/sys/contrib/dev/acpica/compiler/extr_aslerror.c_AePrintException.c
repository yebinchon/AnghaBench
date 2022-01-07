
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_8__ {int * Handle; } ;
struct TYPE_7__ {int Level; scalar_t__ MessageId; char* Message; struct TYPE_7__* SubError; int Filename; } ;
typedef int FILE ;
typedef int BOOLEAN ;
typedef TYPE_1__ ASL_ERROR_MSG ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;





 int AeDecodeErrorMessageId (int *,TYPE_1__*,int ,size_t) ;
 int AePrintErrorSourceLine (int *,TYPE_1__*,int *,size_t*) ;
 int AePrintSubError (int *,TYPE_1__*) ;
 int AslGbl_DisplayOptimizations ;
 int AslGbl_DisplayRemarks ;
 int AslGbl_DisplayWarnings ;
 TYPE_2__* AslGbl_Files ;
 scalar_t__ AslGbl_NoErrors ;
 int FALSE ;
 int fprintf (int *,char*,...) ;

void
AePrintException (
    UINT32 FileId,
    ASL_ERROR_MSG *Enode,
    char *Header)
{
    FILE *OutputFile;
    BOOLEAN PrematureEOF = FALSE;
    UINT32 Total = 0;
    ACPI_STATUS Status;
    ASL_ERROR_MSG *Child = Enode->SubError;


    if (AslGbl_NoErrors)
    {
        return;
    }





    if (!Header)
    {


        switch (Enode->Level)
        {
        case 130:
        case 129:
        case 128:

            if (!AslGbl_DisplayWarnings)
            {
                return;
            }
            break;

        case 131:

            if (!AslGbl_DisplayRemarks)
            {
                return;
            }
            break;

        case 132:

            if (!AslGbl_DisplayOptimizations)
            {
                return;
            }
            break;

        default:

            break;
        }
    }



    OutputFile = AslGbl_Files[FileId].Handle;

    if (Header)
    {
        fprintf (OutputFile, "%s", Header);
    }

    if (!Enode->Filename)
    {
        AeDecodeErrorMessageId (OutputFile, Enode, PrematureEOF, Total);
        return;
    }

    Status = AePrintErrorSourceLine (OutputFile, Enode, &PrematureEOF, &Total);
    if (ACPI_FAILURE (Status))
    {
        return;
    }



    if (Enode->MessageId == 0)
    {
        fprintf (OutputFile, "%s\n", Enode->Message);
        return;
    }

    AeDecodeErrorMessageId (OutputFile, Enode, PrematureEOF, Total);

    while (Child)
    {
        fprintf (OutputFile, "\n");
        AePrintSubError (OutputFile, Child);
        Child = Child->SubError;
    }
}
