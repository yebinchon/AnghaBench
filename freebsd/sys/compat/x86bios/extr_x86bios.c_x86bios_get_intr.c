
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int le32toh (int ) ;
 scalar_t__ x86bios_ivt ;

uint32_t
x86bios_get_intr(int intno)
{

 return (le32toh(*((uint32_t *)x86bios_ivt + intno)));
}
