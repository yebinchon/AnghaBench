
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;


 int atoi (char*) ;
 int wpas_wmm_ac_delts (struct wpa_supplicant*,int ) ;

__attribute__((used)) static int wmm_ac_ctrl_delts(struct wpa_supplicant *wpa_s, char *cmd)
{
 u8 tsid = atoi(cmd);

 return wpas_wmm_ac_delts(wpa_s, tsid);
}
