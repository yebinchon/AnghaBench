
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT16 ;


 int AcpiOsPrintf (char*,int ,char const*) ;

void
AcpiDmDumpInteger16 (
    UINT16 Value,
    const char *Name)
{
    AcpiOsPrintf ("0x%4.4X,             // %s\n", Value, Name);
}
