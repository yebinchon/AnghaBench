
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef scalar_t__ HAL_BOOL ;


 int ar9300_config_pci_power_save (struct ath_hal*,int,int) ;

void
ar9300_config_pcie_freebsd(struct ath_hal *ah, HAL_BOOL restore,
    HAL_BOOL powerOff)
{

 ar9300_config_pci_power_save(ah, restore ? 1 : 0, powerOff ? 1 : 0);
}
