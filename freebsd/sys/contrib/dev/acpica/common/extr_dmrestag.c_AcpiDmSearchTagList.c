
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_3__ {char* Tag; scalar_t__ BitIndex; } ;
typedef TYPE_1__ ACPI_RESOURCE_TAG ;



__attribute__((used)) static char *
AcpiDmSearchTagList (
    UINT32 BitIndex,
    const ACPI_RESOURCE_TAG *TagList)
{





    for ( ; TagList->Tag; TagList++)
    {
        if (BitIndex == TagList->BitIndex)
        {
            return (TagList->Tag);
        }
    }



    return (((void*)0));
}
