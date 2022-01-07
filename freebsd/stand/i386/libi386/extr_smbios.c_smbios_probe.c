
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * caddr_t ;
struct TYPE_2__ {int probed; int ver; int major; int minor; void* product; void* maker; void* bios_vendor; int * addr; void* count; void* length; } ;


 int * const PTOV (uintptr_t) ;
 void* SMBIOS_GET16 (int *,int) ;
 uintptr_t SMBIOS_GET32 (int *,int) ;
 void* SMBIOS_GET8 (int *,int) ;
 int SMBIOS_LENGTH ;
 uintptr_t SMBIOS_START ;
 TYPE_1__ smbios ;
 int * smbios_find_struct (int) ;
 void* smbios_getstring (int *,int) ;
 int * smbios_sigsearch (int * const,int ) ;

__attribute__((used)) static void
smbios_probe(const caddr_t addr)
{
 caddr_t saddr, info;
 uintptr_t paddr;

 if (smbios.probed)
  return;
 smbios.probed = 1;


 saddr = smbios_sigsearch(addr ? addr : PTOV(SMBIOS_START),
     SMBIOS_LENGTH);
 if (saddr == ((void*)0))
  return;

 smbios.length = SMBIOS_GET16(saddr, 0x16);
 paddr = SMBIOS_GET32(saddr, 0x18);
 smbios.count = SMBIOS_GET16(saddr, 0x1c);
 smbios.ver = SMBIOS_GET8(saddr, 0x1e);

 if (smbios.ver != 0) {
  smbios.major = smbios.ver >> 4;
  smbios.minor = smbios.ver & 0x0f;
  if (smbios.major > 9 || smbios.minor > 9)
   smbios.ver = 0;
 }
 if (smbios.ver == 0) {
  smbios.major = SMBIOS_GET8(saddr, 0x06);
  smbios.minor = SMBIOS_GET8(saddr, 0x07);
 }
 smbios.ver = (smbios.major << 8) | smbios.minor;
 smbios.addr = PTOV(paddr);


 info = smbios_find_struct(0x00);
 if (info != ((void*)0)) {
  smbios.bios_vendor = smbios_getstring(info, 0x04);
 }
 info = smbios_find_struct(0x01);
 if (info != ((void*)0)) {
  smbios.maker = smbios_getstring(info, 0x04);
  smbios.product = smbios_getstring(info, 0x05);
 }
}
