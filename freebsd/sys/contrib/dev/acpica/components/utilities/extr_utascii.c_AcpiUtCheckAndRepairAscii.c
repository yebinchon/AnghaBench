
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef size_t UINT32 ;


 int isprint (scalar_t__) ;

void
AcpiUtCheckAndRepairAscii (
    UINT8 *Name,
    char *RepairedName,
    UINT32 Count)
{
    UINT32 i;


    for (i = 0; i < Count; i++)
    {
        RepairedName[i] = (char) Name[i];

        if (!Name[i])
        {
            return;
        }
        if (!isprint (Name[i]))
        {
            RepairedName[i] = ' ';
        }
    }
}
