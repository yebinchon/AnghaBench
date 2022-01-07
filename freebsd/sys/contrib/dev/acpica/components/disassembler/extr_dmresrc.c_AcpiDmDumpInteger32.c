
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int AcpiOsPrintf (char*,int ,char const*) ;

void
AcpiDmDumpInteger32 (
    UINT32 Value,
    const char *Name)
{
    AcpiOsPrintf ("0x%8.8X,         // %s\n", Value, Name);
}
