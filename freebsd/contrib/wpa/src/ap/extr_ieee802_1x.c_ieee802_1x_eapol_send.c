
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int flags; struct eapol_state_machine* eapol_sm; } ;
struct eapol_state_machine {int eap; } ;


 int MSG_DEBUG ;
 int WLAN_STA_MAYBE_WPS ;
 int WLAN_STA_WPS ;
 int WSC_ID_ENROLLEE ;
 size_t WSC_ID_ENROLLEE_LEN ;
 int WSC_ID_REGISTRAR ;
 size_t WSC_ID_REGISTRAR_LEN ;
 int * eap_get_identity (int ,size_t*) ;
 int ieee802_1x_send (void*,void*,int ,int const*,size_t) ;
 scalar_t__ os_memcmp (int const*,int ,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void ieee802_1x_eapol_send(void *ctx, void *sta_ctx, u8 type,
      const u8 *data, size_t datalen)
{
 ieee802_1x_send(ctx, sta_ctx, type, data, datalen);
}
