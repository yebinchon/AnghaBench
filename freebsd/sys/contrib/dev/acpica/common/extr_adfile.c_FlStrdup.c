
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ACPI_SIZE ;


 char* UtLocalCacheCalloc (scalar_t__) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *
FlStrdup (
    char *String)
{
    char *NewString;


    NewString = UtLocalCacheCalloc ((ACPI_SIZE) strlen (String) + 1);
    strcpy (NewString, String);
    return (NewString);
}
