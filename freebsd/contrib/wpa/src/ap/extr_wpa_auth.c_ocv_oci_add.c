
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_state_machine {int wpa_auth; } ;
struct wpa_channel_info {int dummy; } ;


 int MSG_WARNING ;
 int ocv_insert_oci_kde (struct wpa_channel_info*,int **) ;
 int wpa_auth_uses_ocv (struct wpa_state_machine*) ;
 scalar_t__ wpa_channel_info (int ,struct wpa_channel_info*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int ocv_oci_add(struct wpa_state_machine *sm, u8 **argpos)
{
 return 0;

}
