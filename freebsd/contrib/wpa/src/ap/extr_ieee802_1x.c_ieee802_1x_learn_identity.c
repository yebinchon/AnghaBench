
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hostapd_data {int dummy; } ;
struct eapol_state_machine {scalar_t__* identity; size_t identity_len; int dot1xAuthEapolRespIdFramesRx; int addr; int eap; } ;
struct eap_hdr {scalar_t__ code; } ;


 scalar_t__ EAP_CODE_INITIATE ;
 scalar_t__ EAP_CODE_RESPONSE ;
 scalar_t__ const EAP_ERP_TYPE_REAUTH ;
 scalar_t__ const EAP_TYPE_IDENTITY ;
 int HOSTAPD_LEVEL_DEBUG ;
 int HOSTAPD_MODULE_IEEE8021X ;
 scalar_t__ dup_binstr (scalar_t__ const*,size_t) ;
 int eap_erp_update_identity (int ,scalar_t__ const*,size_t) ;
 scalar_t__* eap_get_identity (int ,size_t*) ;
 int hostapd_logger (struct hostapd_data*,int ,int ,int ,char*,scalar_t__*) ;
 int os_free (scalar_t__*) ;

__attribute__((used)) static void ieee802_1x_learn_identity(struct hostapd_data *hapd,
          struct eapol_state_machine *sm,
          const u8 *eap, size_t len)
{
 const u8 *identity;
 size_t identity_len;
 const struct eap_hdr *hdr = (const struct eap_hdr *) eap;

 if (len <= sizeof(struct eap_hdr) ||
     (hdr->code == EAP_CODE_RESPONSE &&
      eap[sizeof(struct eap_hdr)] != EAP_TYPE_IDENTITY) ||
     (hdr->code == EAP_CODE_INITIATE &&
      eap[sizeof(struct eap_hdr)] != EAP_ERP_TYPE_REAUTH) ||
     (hdr->code != EAP_CODE_RESPONSE &&
      hdr->code != EAP_CODE_INITIATE))
  return;

 eap_erp_update_identity(sm->eap, eap, len);
 identity = eap_get_identity(sm->eap, &identity_len);
 if (identity == ((void*)0))
  return;


 os_free(sm->identity);
 sm->identity = (u8 *) dup_binstr(identity, identity_len);
 if (sm->identity == ((void*)0)) {
  sm->identity_len = 0;
  return;
 }

 sm->identity_len = identity_len;
 hostapd_logger(hapd, sm->addr, HOSTAPD_MODULE_IEEE8021X,
         HOSTAPD_LEVEL_DEBUG, "STA identity '%s'", sm->identity);
 sm->dot1xAuthEapolRespIdFramesRx++;
}
