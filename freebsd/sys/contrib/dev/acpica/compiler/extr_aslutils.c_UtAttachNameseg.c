
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int NameSeg; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int ACPI_COPY_NAMESEG (int ,char*) ;
 scalar_t__ ACPI_IS_PARENT_PREFIX (char) ;
 scalar_t__ ACPI_IS_ROOT_PREFIX (char) ;
 int UtPadNameWithUnderscores (char*,char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void
UtAttachNameseg (
    ACPI_PARSE_OBJECT *Op,
    char *Name)
{
    char *NameSeg;
    char PaddedNameSeg[4];


    if (!Name)
    {
        return;
    }



    NameSeg = strrchr (Name, '.');
    if (NameSeg)
    {


        NameSeg++;
        UtPadNameWithUnderscores (NameSeg, PaddedNameSeg);
    }
    else
    {



        while (ACPI_IS_ROOT_PREFIX (*Name) ||
               ACPI_IS_PARENT_PREFIX (*Name))
        {
            Name++;
        }



        UtPadNameWithUnderscores (Name, PaddedNameSeg);
    }

    ACPI_COPY_NAMESEG (Op->Asl.NameSeg, PaddedNameSeg);
}
