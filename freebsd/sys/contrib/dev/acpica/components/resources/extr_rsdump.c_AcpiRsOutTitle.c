
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AcpiOsPrintf (char*,char const*) ;

__attribute__((used)) static void
AcpiRsOutTitle (
    const char *Title)
{

    AcpiOsPrintf ("%27s : ", Title);
}
