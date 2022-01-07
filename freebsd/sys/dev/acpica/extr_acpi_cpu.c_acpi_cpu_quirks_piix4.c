
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int * device_t ;
typedef int ACPI_STATUS ;


 int ACPI_BITREG_BUS_MASTER_RLD ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_SUCCESS (int ) ;
 int AcpiReadBitRegister (int ,int*) ;
 int AcpiWriteBitRegister (int ,int ) ;
 int CPU_QUIRK_NO_C3 ;
 int PCI_DEVICE_82371AB_3 ;




 int PCI_VENDOR_INTEL ;
 int PIIX4_DEVACTB_REG ;
 int PIIX4_STOP_BREAK_MASK ;
 int cpu_quirks ;
 int * pci_find_device (int ,int ) ;
 int pci_get_revid (int *) ;
 int pci_read_config (int *,int ,int) ;
 int pci_write_config (int *,int ,int,int) ;

__attribute__((used)) static void
acpi_cpu_quirks_piix4(void)
{
}
