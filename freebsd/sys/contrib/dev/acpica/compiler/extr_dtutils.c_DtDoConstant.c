
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;


 int AcpiUtImplicitStrtoul64 (char*) ;

UINT64
DtDoConstant (
    char *String)
{
    UINT64 ConvertedInteger;
    ConvertedInteger = AcpiUtImplicitStrtoul64 (String);
    return (ConvertedInteger);
}
