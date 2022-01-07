
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BIOSPCI_32BITS ;
 int CMD_ERROR ;
 int CMD_OK ;
 int EV_VOLATILE ;
 int PCIM_BAR_IO_BASE ;
 int PCI_BAR_IO (int) ;
 int biospci_read_config (int,int,int ,int*) ;
 int comc_curspeed ;
 int comc_locator ;
 int comc_port_set ;
 int comc_setup (int ,int) ;
 int env_nounset ;
 int env_setenv (char*,int ,char*,int ,int ) ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int) ;
 int unsetenv (char*) ;

__attribute__((used)) static int
comc_pcidev_handle(uint32_t locator)
{




 char intbuf[64];
 uint32_t port;

 if (biospci_read_config(locator & 0xffff,
     (locator & 0xff0000) >> 16, BIOSPCI_32BITS, &port) == -1) {
  printf("Cannot read bar at 0x%x\n", locator);
  return (CMD_ERROR);
 }






 if (port == 0xffffffff) {
  printf("Cannot find specified pcidev\n");
  return (CMD_ERROR);
 }
 if (!PCI_BAR_IO(port)) {
  printf("Memory bar at 0x%x\n", locator);
  return (CMD_ERROR);
 }
        port &= PCIM_BAR_IO_BASE;

 sprintf(intbuf, "%d", port);
 unsetenv("comconsole_port");
 env_setenv("comconsole_port", EV_VOLATILE, intbuf,
     comc_port_set, env_nounset);

 comc_setup(comc_curspeed, port);
 comc_locator = locator;

 return (CMD_OK);

}
