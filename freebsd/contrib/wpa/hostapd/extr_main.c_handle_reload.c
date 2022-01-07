
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hapd_interfaces {int dummy; } ;


 int MSG_DEBUG ;
 int handle_reload_iface ;
 int hostapd_for_each_interface (struct hapd_interfaces*,int ,int *) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static void handle_reload(int sig, void *signal_ctx)
{
 struct hapd_interfaces *interfaces = signal_ctx;
 wpa_printf(MSG_DEBUG, "Signal %d received - reloading configuration",
     sig);
 hostapd_for_each_interface(interfaces, handle_reload_iface, ((void*)0));
}
