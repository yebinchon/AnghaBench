
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ACPI_SIZE ;


 char* UtLocalCacheCalloc (scalar_t__) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 char* strrchr (char*,char) ;

char *
FlGenerateFilename (
    char *InputFilename,
    char *Suffix)
{
    char *Position;
    char *NewFilename;
    char *DirectoryPosition;






    NewFilename = UtLocalCacheCalloc ((ACPI_SIZE)
        strlen (InputFilename) + strlen (Suffix) + 2);
    strcpy (NewFilename, InputFilename);



    DirectoryPosition = strrchr (NewFilename, '/');
    Position = strrchr (NewFilename, '.');

    if (Position && (Position > DirectoryPosition))
    {


        Position++;
        *Position = 0;
        strcat (Position, Suffix);
    }
    else
    {


        strcat (NewFilename, ".");
        strcat (NewFilename, Suffix);
    }

    return (NewFilename);
}
