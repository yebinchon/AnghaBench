
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct erp_tlvs {int domain_len; scalar_t__ domain; } ;
struct eap_sm {int dummy; } ;
struct eap_hdr {int identifier; } ;


 int EAPOL_eapTriggerStart ;
 scalar_t__ const EAP_ERP_TYPE_REAUTH_START ;
 int MSG_DEBUG ;
 int TRUE ;
 scalar_t__ eap_peer_erp_reauth_start (struct eap_sm*,int ) ;
 int eapol_set_bool (struct eap_sm*,int ,int ) ;
 scalar_t__ erp_parse_tlvs (scalar_t__ const*,scalar_t__ const*,struct erp_tlvs*,int ) ;
 int wpa_hexdump (int ,char*,scalar_t__ const*,int) ;
 int wpa_hexdump_ascii (int ,char*,scalar_t__,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void eap_peer_initiate(struct eap_sm *sm, const struct eap_hdr *hdr,
         size_t len)
{
 wpa_printf(MSG_DEBUG,
     "EAP: EAP-Initiate/Re-auth-Start - No suitable ERP keys available - try to start full EAP authentication");
 eapol_set_bool(sm, EAPOL_eapTriggerStart, TRUE);
}
