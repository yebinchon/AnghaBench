
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * caddr_t ;
struct TYPE_2__ {int length; size_t count; int major; int minor; scalar_t__ enabled_memory; scalar_t__ old_enabled_memory; scalar_t__ enabled_sockets; scalar_t__ populated_sockets; int * addr; } ;


 int setenv (char*,char*,int) ;
 TYPE_1__ smbios ;
 int * smbios_parse_table (int *) ;
 int smbios_probe (int * const) ;
 int sprintf (char*,char*,scalar_t__,...) ;

void
smbios_detect(const caddr_t addr)
{
 char buf[16];
 caddr_t dmi;
 size_t i;

 smbios_probe(addr);
 if (smbios.addr == ((void*)0))
  return;

 for (dmi = smbios.addr, i = 0;
      dmi < smbios.addr + smbios.length && i < smbios.count; i++)
  dmi = smbios_parse_table(dmi);

 sprintf(buf, "%d.%d", smbios.major, smbios.minor);
 setenv("smbios.version", buf, 1);
 if (smbios.enabled_memory > 0 || smbios.old_enabled_memory > 0) {
  sprintf(buf, "%u", smbios.enabled_memory > 0 ?
      smbios.enabled_memory : smbios.old_enabled_memory);
  setenv("smbios.memory.enabled", buf, 1);
 }
 if (smbios.enabled_sockets > 0) {
  sprintf(buf, "%u", smbios.enabled_sockets);
  setenv("smbios.socket.enabled", buf, 1);
 }
 if (smbios.populated_sockets > 0) {
  sprintf(buf, "%u", smbios.populated_sockets);
  setenv("smbios.socket.populated", buf, 1);
 }
}
