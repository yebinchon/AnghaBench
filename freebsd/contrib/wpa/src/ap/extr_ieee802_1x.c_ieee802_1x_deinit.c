
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int * eapol_auth; TYPE_1__* conf; scalar_t__ drv_priv; scalar_t__ driver; } ;
struct TYPE_2__ {int iface; scalar_t__ wpa; scalar_t__ ieee802_1x; } ;


 int eapol_auth_deinit (int *) ;
 int eloop_cancel_timeout (int ,struct hostapd_data*,int *) ;
 int hostapd_set_drv_ieee8021x (struct hostapd_data*,int ,int ) ;
 int ieee802_1x_erp_flush (struct hostapd_data*) ;
 int ieee802_1x_rekey ;

void ieee802_1x_deinit(struct hostapd_data *hapd)
{
 eloop_cancel_timeout(ieee802_1x_rekey, hapd, ((void*)0));

 if (hapd->driver && hapd->drv_priv &&
     (hapd->conf->ieee802_1x || hapd->conf->wpa))
  hostapd_set_drv_ieee8021x(hapd, hapd->conf->iface, 0);

 eapol_auth_deinit(hapd->eapol_auth);
 hapd->eapol_auth = ((void*)0);

 ieee802_1x_erp_flush(hapd);
}
