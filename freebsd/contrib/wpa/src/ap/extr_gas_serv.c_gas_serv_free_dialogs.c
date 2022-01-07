
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {TYPE_1__* gas_dialog; } ;
struct hostapd_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ valid; } ;


 int GAS_DIALOG_MAX ;
 struct sta_info* ap_get_sta (struct hostapd_data*,int const*) ;
 int os_free (TYPE_1__*) ;

__attribute__((used)) static void gas_serv_free_dialogs(struct hostapd_data *hapd,
      const u8 *sta_addr)
{
 struct sta_info *sta;
 int i;

 sta = ap_get_sta(hapd, sta_addr);
 if (sta == ((void*)0) || sta->gas_dialog == ((void*)0))
  return;

 for (i = 0; i < GAS_DIALOG_MAX; i++) {
  if (sta->gas_dialog[i].valid)
   return;
 }

 os_free(sta->gas_dialog);
 sta->gas_dialog = ((void*)0);
}
