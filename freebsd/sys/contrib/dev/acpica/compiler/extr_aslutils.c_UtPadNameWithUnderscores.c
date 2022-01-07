
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 scalar_t__ ACPI_NAMESEG_SIZE ;

__attribute__((used)) static void
UtPadNameWithUnderscores (
    char *NameSeg,
    char *PaddedNameSeg)
{
    UINT32 i;


    for (i = 0; (i < ACPI_NAMESEG_SIZE); i++)
    {
        if (*NameSeg)
        {
            *PaddedNameSeg = *NameSeg;
            NameSeg++;
        }
        else
        {
            *PaddedNameSeg = '_';
        }

        PaddedNameSeg++;
    }
}
