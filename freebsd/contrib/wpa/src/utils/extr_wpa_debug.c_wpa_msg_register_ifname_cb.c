
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wpa_msg_get_ifname_func ;


 int wpa_msg_ifname_cb ;

void wpa_msg_register_ifname_cb(wpa_msg_get_ifname_func func)
{
 wpa_msg_ifname_cb = func;
}
