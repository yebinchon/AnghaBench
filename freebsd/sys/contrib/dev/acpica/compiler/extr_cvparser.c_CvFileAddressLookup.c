
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* FileStart; char* FileEnd; struct TYPE_4__* Next; } ;
typedef TYPE_1__ ACPI_FILE_NODE ;



__attribute__((used)) static ACPI_FILE_NODE *
CvFileAddressLookup(
    char *Address,
    ACPI_FILE_NODE *Head)
{
    ACPI_FILE_NODE *Current = Head;


    while (Current)
    {
        if ((Address >= Current->FileStart) &&
            (Address < Current->FileEnd ||
            !Current->FileEnd))
        {
            return (Current);
        }

        Current = Current->Next;
    }

    return (((void*)0));
}
