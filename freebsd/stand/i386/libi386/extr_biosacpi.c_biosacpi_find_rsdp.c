
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ACPI_TABLE_RSDP ;


 scalar_t__ PTOV (int) ;
 int * biosacpi_search_rsdp (char*,int) ;

__attribute__((used)) static ACPI_TABLE_RSDP *
biosacpi_find_rsdp(void)
{
    ACPI_TABLE_RSDP *rsdp;
    uint16_t *addr;


    addr = (uint16_t *)PTOV(0x40E);
    if ((rsdp = biosacpi_search_rsdp((char *)(*addr << 4), 0x400)) != ((void*)0))
 return (rsdp);


    if ((rsdp = biosacpi_search_rsdp((char *)0xe0000, 0x20000)) != ((void*)0))
 return (rsdp);

    return (((void*)0));
}
