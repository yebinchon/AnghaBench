
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_SIZE ;


 int ACPI_PTR_DIFF (char*,char*) ;
 char* UtLocalCacheCalloc (int) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static char *
DtTrim (
    char *String)
{
    char *Start;
    char *End;
    char *ReturnString;
    ACPI_SIZE Length;




    if (*String == 0 || !strcmp (String, " "))
    {
        ReturnString = UtLocalCacheCalloc (1);
        return (ReturnString);
    }



    Start = String;
    End = String + strlen (String) - 1;



    while ((Start <= End) && ((*Start == ' ') || (*Start == '\t')))
    {
        Start++;
    }



    while (End >= Start)
    {
        if (*End == '\n')
        {
            End--;
            continue;
        }

        if (*End != ' ')
        {
            break;
        }

        End--;
    }



    if (*Start == '\"')
    {
        Start++;
    }
    if (*End == '\"')
    {
        End--;
    }



    Length = ACPI_PTR_DIFF (End, Start) + 1;
    ReturnString = UtLocalCacheCalloc (Length + 1);
    if (strlen (Start))
    {
        strncpy (ReturnString, Start, Length);
    }

    ReturnString[Length] = 0;
    return (ReturnString);
}
