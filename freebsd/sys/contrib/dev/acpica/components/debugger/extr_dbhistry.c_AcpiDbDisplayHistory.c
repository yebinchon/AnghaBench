
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
typedef size_t UINT16 ;
struct TYPE_2__ {scalar_t__ Command; int CmdNum; } ;


 TYPE_1__* AcpiGbl_HistoryBuffer ;
 size_t AcpiGbl_LoHistory ;
 scalar_t__ AcpiGbl_NumHistory ;
 int AcpiOsPrintf (char*,int ,scalar_t__) ;
 size_t HISTORY_SIZE ;

void
AcpiDbDisplayHistory (
    void)
{
    UINT32 i;
    UINT16 HistoryIndex;


    HistoryIndex = AcpiGbl_LoHistory;



    for (i = 0; i < AcpiGbl_NumHistory; i++)
    {
        if (AcpiGbl_HistoryBuffer[HistoryIndex].Command)
        {
            AcpiOsPrintf ("%3u  %s\n",
                AcpiGbl_HistoryBuffer[HistoryIndex].CmdNum,
                AcpiGbl_HistoryBuffer[HistoryIndex].Command);
        }

        HistoryIndex++;
        if (HistoryIndex >= HISTORY_SIZE)
        {
            HistoryIndex = 0;
        }
    }
}
