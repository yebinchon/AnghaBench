
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOLEAN ;


 int AcpiUtRemoveHexPrefix (char**) ;
 int FALSE ;
 int TRUE ;

BOOLEAN
AcpiUtDetectHexPrefix (
    char **String)
{
    char *InitialPosition = *String;

    AcpiUtRemoveHexPrefix (String);
    if (*String != InitialPosition)
    {
        return (TRUE);
    }

    return (FALSE);
}
