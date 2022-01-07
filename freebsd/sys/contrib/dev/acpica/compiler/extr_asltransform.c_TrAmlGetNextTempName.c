
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int ACPI_PARSE_OBJECT ;


 int ASL_ERROR ;
 int ASL_MSG_TOO_MANY_TEMPS ;
 int AslError (int ,int ,int *,int *) ;
 char* UtLocalCalloc (int) ;

__attribute__((used)) static char *
TrAmlGetNextTempName (
    ACPI_PARSE_OBJECT *Op,
    UINT8 *TempCount)
{
    char *TempName;


    if (*TempCount >= (10 + 26))
    {


        AslError (ASL_ERROR, ASL_MSG_TOO_MANY_TEMPS, Op, ((void*)0));
        return (((void*)0));
    }

    TempName = UtLocalCalloc (5);

    if (*TempCount < 10)
    {
        TempName[3] = (char) (*TempCount + '0');
    }
    else
    {
        TempName[3] = (char) (*TempCount + ('A' - 10));
    }

    (*TempCount)++;



    TempName[0] = '_';
    TempName[1] = 'T';
    TempName[2] = '_';

    return (TempName);
}
