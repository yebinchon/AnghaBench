
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ses_elm_sas_device_phy {int byte0; } ;



int
ses_elm_sas_dev_phy_dev_type(struct ses_elm_sas_device_phy *phy)
{
 return (((phy)->byte0 >> 4) & 0x7);
}
