
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 scalar_t__ isspace (int ) ;

char
AcpiUtRemoveWhitespace (
    char **String)
{

    while (isspace ((UINT8) **String))
    {
        *String += 1;
    }

    return (**String);
}
