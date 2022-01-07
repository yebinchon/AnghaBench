
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



int driver_wired_get_ssid(void *priv, u8 *ssid)
{
 ssid[0] = 0;
 return 0;
}
