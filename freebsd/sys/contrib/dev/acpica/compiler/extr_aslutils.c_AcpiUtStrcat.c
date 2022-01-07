
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 scalar_t__ UtLocalCalloc (int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

char *
AcpiUtStrcat (
    char *String1,
    char *String2)
{
    UINT32 String1Length = strlen (String1);
    char *NewString = (char *) UtLocalCalloc (strlen (String1) + strlen (String2) + 1);

    strcpy (NewString, String1);
    strcpy (NewString + String1Length, String2);
    return (NewString);
}
