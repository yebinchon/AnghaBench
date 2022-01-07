
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int AE_NO_MEMORY ;
 int AE_OK ;
 char* FlStrdup (char*) ;
 int UtConvertBackslashes (char*) ;
 char* strrchr (char*,char) ;

ACPI_STATUS
FlSplitInputPathname (
    char *InputPath,
    char **OutDirectoryPath,
    char **OutFilename)
{
    char *Substring;
    char *DirectoryPath;
    char *Filename;


    if (OutDirectoryPath)
    {
        *OutDirectoryPath = ((void*)0);
    }

    if (!InputPath)
    {
        return (AE_OK);
    }



    DirectoryPath = FlStrdup (InputPath);
    if (!DirectoryPath)
    {
        return (AE_NO_MEMORY);
    }



    UtConvertBackslashes (DirectoryPath);



    Substring = strrchr (DirectoryPath, '/');
    if (!Substring)
    {
        Substring = strrchr (DirectoryPath, ':');
    }



    if (!Substring)
    {
        Filename = FlStrdup (DirectoryPath);
        DirectoryPath[0] = 0;
    }
    else
    {
        Filename = FlStrdup (Substring + 1);
        *(Substring+1) = 0;
    }

    if (!Filename)
    {
        return (AE_NO_MEMORY);
    }

    if (OutDirectoryPath)
    {
        *OutDirectoryPath = DirectoryPath;
    }

    if (OutFilename)
    {
        *OutFilename = Filename;
        return (AE_OK);
    }

    return (AE_OK);
}
