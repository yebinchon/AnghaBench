
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_mka_sak_use_body {int lan; int oan; int olpn; int okn; int osrv_mi; int llpn; int lkn; int lsrv_mi; int delay_protect; int prx; int ptx; int orx; int otx; int lrx; int ltx; } ;


 int MSG_DEBUG ;
 int be_to_host32 (int ) ;
 int get_mka_param_body_len (struct ieee802_1x_mka_sak_use_body*) ;
 int mi_txt (int ) ;
 int wpa_printf (int ,char*,...) ;
 int yes_no (int ) ;

__attribute__((used)) static void
ieee802_1x_mka_dump_sak_use_body(struct ieee802_1x_mka_sak_use_body *body)
{
 int body_len;

 if (body == ((void*)0))
  return;


 body_len = get_mka_param_body_len(body);
 wpa_printf(MSG_DEBUG, "MACsec SAK Use parameter set");
 wpa_printf(MSG_DEBUG, "\tLatest Key AN....: %d", body->lan);
 wpa_printf(MSG_DEBUG, "\tLatest Key Tx....: %s", yes_no(body->ltx));
 wpa_printf(MSG_DEBUG, "\tLatest Key Rx....: %s", yes_no(body->lrx));
 wpa_printf(MSG_DEBUG, "\tOld Key AN.......: %d", body->oan);
 wpa_printf(MSG_DEBUG, "\tOld Key Tx.......: %s", yes_no(body->otx));
 wpa_printf(MSG_DEBUG, "\tOld Key Rx.......: %s", yes_no(body->orx));
 wpa_printf(MSG_DEBUG, "\tPlain Tx.........: %s", yes_no(body->ptx));
 wpa_printf(MSG_DEBUG, "\tPlain Rx.........: %s", yes_no(body->prx));
 wpa_printf(MSG_DEBUG, "\tDelay Protect....: %s",
     yes_no(body->delay_protect));
 wpa_printf(MSG_DEBUG, "\tBody Length......: %d", body_len);
 if (!body_len)
  return;

 wpa_printf(MSG_DEBUG, "\tKey Server MI....: %s", mi_txt(body->lsrv_mi));
 wpa_printf(MSG_DEBUG, "\tKey Number.......: %u",
     be_to_host32(body->lkn));
 wpa_printf(MSG_DEBUG, "\tLowest PN........: %u",
     be_to_host32(body->llpn));
 wpa_printf(MSG_DEBUG, "\tOld Key Server MI: %s", mi_txt(body->osrv_mi));
 wpa_printf(MSG_DEBUG, "\tOld Key Number...: %u",
     be_to_host32(body->okn));
 wpa_printf(MSG_DEBUG, "\tOld Lowest PN....: %u",
     be_to_host32(body->olpn));
}
