
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_iface {int dummy; } ;


 int MSG_ERROR ;
 int acs_cleanup (struct hostapd_iface*) ;
 int hostapd_disable_iface (struct hostapd_iface*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void acs_fail(struct hostapd_iface *iface)
{
 wpa_printf(MSG_ERROR, "ACS: Failed to start");
 acs_cleanup(iface);
 hostapd_disable_iface(iface);
}
