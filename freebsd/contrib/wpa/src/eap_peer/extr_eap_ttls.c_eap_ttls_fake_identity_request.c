
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_hdr {int length; scalar_t__ identifier; int code; } ;


 int EAP_CODE_REQUEST ;
 int EAP_TYPE_IDENTITY ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 int host_to_be16 (int) ;
 int * os_malloc (int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static u8 * eap_ttls_fake_identity_request(void)
{
 struct eap_hdr *hdr;
 u8 *buf;

 wpa_printf(MSG_DEBUG, "EAP-TTLS: empty data in beginning of "
     "Phase 2 - use fake EAP-Request Identity");
 buf = os_malloc(sizeof(*hdr) + 1);
 if (buf == ((void*)0)) {
  wpa_printf(MSG_WARNING, "EAP-TTLS: failed to allocate "
      "memory for fake EAP-Identity Request");
  return ((void*)0);
 }

 hdr = (struct eap_hdr *) buf;
 hdr->code = EAP_CODE_REQUEST;
 hdr->identifier = 0;
 hdr->length = host_to_be16(sizeof(*hdr) + 1);
 buf[sizeof(*hdr)] = EAP_TYPE_IDENTITY;

 return buf;
}
