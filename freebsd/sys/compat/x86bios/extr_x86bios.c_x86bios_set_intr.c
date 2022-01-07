
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int htole32 (int ) ;
 scalar_t__ x86bios_ivt ;

void
x86bios_set_intr(int intno, uint32_t saddr)
{

 *((uint32_t *)x86bios_ivt + intno) = htole32(saddr);
}
