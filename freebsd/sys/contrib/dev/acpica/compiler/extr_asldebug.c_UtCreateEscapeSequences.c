
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 char AcpiUtHexToAsciiChar (char,int) ;
 char* UtLocalCacheCalloc (int) ;

__attribute__((used)) static char *
UtCreateEscapeSequences (
    char *InString)
{
    char *String = InString;
    char *OutString;
    char *OutStringPtr;
    UINT32 InStringLength = 0;
    UINT32 EscapeCount = 0;






    while (*String)
    {
        if ((*String <= 0x1F) || (*String >= 0x7F))
        {
            EscapeCount++;
        }

        InStringLength++;
        String++;
    }

    if (!EscapeCount)
    {
        return (InString);
    }



    OutString = UtLocalCacheCalloc (InStringLength + (EscapeCount * 3));
    OutStringPtr = OutString;



    while (*InString)
    {
        if ((*InString <= 0x1F) || (*InString >= 0x7F))
        {


            OutStringPtr[0] = '\\';
            OutStringPtr[1] = 'x';
            OutStringPtr[2] = AcpiUtHexToAsciiChar (*InString, 4);
            OutStringPtr[3] = AcpiUtHexToAsciiChar (*InString, 0);
            OutStringPtr += 4;
        }
        else
        {
            *OutStringPtr = *InString;
            OutStringPtr++;
        }

        InString++;
    }

    return (OutString);
}
