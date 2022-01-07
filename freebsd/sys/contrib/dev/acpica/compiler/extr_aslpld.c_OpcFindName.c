
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT32 ;
typedef int BOOLEAN ;


 int AcpiUtStrupr (char*) ;
 int FALSE ;
 int TRUE ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int ) ;

__attribute__((used)) static BOOLEAN
OpcFindName (
    const char **List,
    char *Name,
    UINT32 *Index)
{
    const char *NameString;
    UINT32 i;


    AcpiUtStrupr (Name);

    for (i = 0, NameString = List[0];
            NameString;
            i++, NameString = List[i])
    {
        if (!(strncmp (NameString, Name, strlen (Name))))
        {
            *Index = i;
            return (TRUE);
        }
    }

    return (FALSE);
}
