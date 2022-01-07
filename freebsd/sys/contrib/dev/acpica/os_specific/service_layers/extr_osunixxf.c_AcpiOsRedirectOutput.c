
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* AcpiGbl_OutputFile ;

void
AcpiOsRedirectOutput (
    void *Destination)
{

    AcpiGbl_OutputFile = Destination;
}
