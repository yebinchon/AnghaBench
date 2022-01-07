
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int AcpiOsPrintf (char*,int ,char const*) ;

void
AcpiDmDumpInteger8 (
    UINT8 Value,
    const char *Name)
{
    AcpiOsPrintf ("0x%2.2X,               // %s\n", Value, Name);
}
