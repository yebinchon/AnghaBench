
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int AE_ERROR ;
 int AE_OK ;
 char AML_ROOT_PREFIX ;
 int memmove (char*,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static ACPI_STATUS
AcpiDmRemoveRootPrefix (
    char **Path)
{
    char *InputPath = *Path;


    if ((*InputPath == AML_ROOT_PREFIX) && (InputPath[1]))
    {
        if (!memmove(InputPath, InputPath+1, strlen(InputPath)))
        {
            return (AE_ERROR);
        }

        *Path = InputPath;
    }

    return (AE_OK);
}
