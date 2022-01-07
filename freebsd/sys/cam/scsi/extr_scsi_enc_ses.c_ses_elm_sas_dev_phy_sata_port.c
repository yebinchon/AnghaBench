
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ses_elm_sas_device_phy {int target_ports; } ;



int
ses_elm_sas_dev_phy_sata_port(struct ses_elm_sas_device_phy *phy)
{
 return ((phy)->target_ports >> 7);
}
