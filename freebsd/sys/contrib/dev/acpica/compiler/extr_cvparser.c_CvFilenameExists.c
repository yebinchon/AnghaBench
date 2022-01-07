
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Next; int Filename; } ;
typedef TYPE_1__ ACPI_FILE_NODE ;


 int AcpiUtStricmp (int ,char*) ;

ACPI_FILE_NODE*
CvFilenameExists(
    char *Filename,
    ACPI_FILE_NODE *Head)
{
    ACPI_FILE_NODE *Current = Head;


    if (!Filename)
    {
        return (((void*)0));
    }

    while (Current)
    {
        if (!AcpiUtStricmp (Current->Filename, Filename))
        {
            return (Current);
        }

        Current = Current->Next;
    }
    return (((void*)0));
}
