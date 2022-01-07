
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT16 ;
struct TYPE_2__ {char* Command; int CmdNum; } ;


 TYPE_1__* AcpiGbl_HistoryBuffer ;
 size_t AcpiGbl_LoHistory ;
 int AcpiGbl_NextCmdNum ;
 size_t AcpiGbl_NextHistoryIndex ;
 size_t AcpiGbl_NumHistory ;
 void* AcpiOsAllocate (scalar_t__) ;
 int AcpiOsFree (char*) ;
 size_t HISTORY_SIZE ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

void
AcpiDbAddToHistory (
    char *CommandLine)
{
    UINT16 CmdLen;
    UINT16 BufferLen;



    CmdLen = (UINT16) strlen (CommandLine);
    if (!CmdLen)
    {
        return;
    }

    if (AcpiGbl_HistoryBuffer[AcpiGbl_NextHistoryIndex].Command != ((void*)0))
    {
        BufferLen = (UINT16) strlen (
            AcpiGbl_HistoryBuffer[AcpiGbl_NextHistoryIndex].Command);

        if (CmdLen > BufferLen)
        {
            AcpiOsFree (AcpiGbl_HistoryBuffer[AcpiGbl_NextHistoryIndex].
                Command);
            AcpiGbl_HistoryBuffer[AcpiGbl_NextHistoryIndex].Command =
                AcpiOsAllocate (CmdLen + 1);
        }
    }
    else
    {
        AcpiGbl_HistoryBuffer[AcpiGbl_NextHistoryIndex].Command =
            AcpiOsAllocate (CmdLen + 1);
    }

    strcpy (AcpiGbl_HistoryBuffer[AcpiGbl_NextHistoryIndex].Command,
        CommandLine);

    AcpiGbl_HistoryBuffer[AcpiGbl_NextHistoryIndex].CmdNum =
        AcpiGbl_NextCmdNum;



    if ((AcpiGbl_NumHistory == HISTORY_SIZE) &&
        (AcpiGbl_NextHistoryIndex == AcpiGbl_LoHistory))
    {
        AcpiGbl_LoHistory++;
        if (AcpiGbl_LoHistory >= HISTORY_SIZE)
        {
            AcpiGbl_LoHistory = 0;
        }
    }

    AcpiGbl_NextHistoryIndex++;
    if (AcpiGbl_NextHistoryIndex >= HISTORY_SIZE)
    {
        AcpiGbl_NextHistoryIndex = 0;
    }

    AcpiGbl_NextCmdNum++;
    if (AcpiGbl_NumHistory < HISTORY_SIZE)
    {
        AcpiGbl_NumHistory++;
    }
}
