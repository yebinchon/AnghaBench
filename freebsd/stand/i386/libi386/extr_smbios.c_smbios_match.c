
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int product; int maker; int bios_vendor; } ;


 TYPE_1__ smbios ;
 scalar_t__ smbios_match_str (char const*,int ) ;
 int smbios_probe (int *) ;

int
smbios_match(const char* bios_vendor, const char* maker,
    const char* product)
{

 smbios_probe(((void*)0));
 return (smbios_match_str(bios_vendor, smbios.bios_vendor) &&
     smbios_match_str(maker, smbios.maker) &&
     smbios_match_str(product, smbios.product));
}
