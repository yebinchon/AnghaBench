
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_3__ {scalar_t__ BlockBaseNumber; scalar_t__ GpeCount; int * EventInfo; } ;
typedef int ACPI_GPE_EVENT_INFO ;
typedef TYPE_1__ ACPI_GPE_BLOCK_INFO ;



ACPI_GPE_EVENT_INFO *
AcpiEvLowGetGpeInfo (
    UINT32 GpeNumber,
    ACPI_GPE_BLOCK_INFO *GpeBlock)
{
    UINT32 GpeIndex;






    if (!GpeBlock ||
        (GpeNumber < GpeBlock->BlockBaseNumber))
    {
        return (((void*)0));
    }

    GpeIndex = GpeNumber - GpeBlock->BlockBaseNumber;
    if (GpeIndex >= GpeBlock->GpeCount)
    {
        return (((void*)0));
    }

    return (&GpeBlock->EventInfo[GpeIndex]);
}
