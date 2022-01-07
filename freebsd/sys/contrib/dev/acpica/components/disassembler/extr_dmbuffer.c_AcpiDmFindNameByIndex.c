
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT64 ;
typedef size_t UINT32 ;



__attribute__((used)) static const char *
AcpiDmFindNameByIndex (
    UINT64 Index,
    const char **List)
{
    const char *NameString;
    UINT32 i;




    NameString = List[0];
    i = 0;

    while (NameString)
    {
        i++;
        NameString = List[i];
    }

    if (Index >= i)
    {


        return ("");
    }

    return (List[Index]);
}
