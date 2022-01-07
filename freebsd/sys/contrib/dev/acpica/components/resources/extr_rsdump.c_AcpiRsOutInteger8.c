
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int AcpiOsPrintf (char*,char const*,int ) ;

__attribute__((used)) static void
AcpiRsOutInteger8 (
    const char *Title,
    UINT8 Value)
{
    AcpiOsPrintf ("%27s : %2.2X\n", Title, Value);
}
