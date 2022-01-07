
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er_ap {int dummy; } ;


 int wps_er_ap_get_m1 ;
 int wps_er_send_get_device_info (struct wps_er_ap*,int ) ;

__attribute__((used)) static void wps_er_get_device_info(struct wps_er_ap *ap)
{
 wps_er_send_get_device_info(ap, wps_er_ap_get_m1);
}
