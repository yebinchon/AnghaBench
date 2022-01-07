
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sta_info {int addr; } ;
struct iapp_data {int hapd; } ;


 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_MODULE_IAPP ;
 int hostapd_logger (int ,int ,int ,int ,char*,int ) ;
 int iapp_send_add (struct iapp_data*,int ,int ) ;
 int iapp_send_layer2_update (struct iapp_data*,int ) ;

void iapp_new_station(struct iapp_data *iapp, struct sta_info *sta)
{
 u16 seq = 0;

 if (iapp == ((void*)0))
  return;


 hostapd_logger(iapp->hapd, sta->addr, HOSTAPD_MODULE_IAPP,
         HOSTAPD_LEVEL_DEBUG, "IAPP-ADD.request(seq=%d)", seq);
 iapp_send_layer2_update(iapp, sta->addr);
 iapp_send_add(iapp, sta->addr, seq);






}
