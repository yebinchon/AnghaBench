
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UtLocalCalloc (scalar_t__) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

char *
AcpiUtStrdup (
    char *String)
{
    char *NewString = (char *) UtLocalCalloc (strlen (String) + 1);


    strcpy (NewString, String);
    return (NewString);
}
