
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int AcpiOsPrintf (char*,int,char*) ;

void
AcpiDmIndent (
    UINT32 Level)
{

    if (!Level)
    {
        return;
    }

    AcpiOsPrintf ("%*.s", (Level * 4), " ");
}
