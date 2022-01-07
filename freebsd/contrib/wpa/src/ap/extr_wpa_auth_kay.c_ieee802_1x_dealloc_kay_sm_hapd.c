
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int * kay; } ;


 int ieee802_1x_kay_deinit (int *) ;

void ieee802_1x_dealloc_kay_sm_hapd(struct hostapd_data *hapd)
{
 if (!hapd->kay)
  return;

 ieee802_1x_kay_deinit(hapd->kay);
 hapd->kay = ((void*)0);
}
