
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int eapol; } ;


 int eapol_sm_erp_flush (int ) ;

__attribute__((used)) static int wpas_ctrl_iface_erp_flush(struct wpa_supplicant *wpa_s)
{
 eapol_sm_erp_flush(wpa_s->eapol);
 return 0;
}
