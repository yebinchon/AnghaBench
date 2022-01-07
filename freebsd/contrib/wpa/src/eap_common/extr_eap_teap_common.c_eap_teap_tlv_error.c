
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
typedef enum teap_error_codes { ____Placeholder_teap_error_codes } teap_error_codes ;


 int MSG_DEBUG ;
 int TEAP_TLV_ERROR ;
 int TEAP_TLV_MANDATORY ;
 int wpa_printf (int ,char*,int) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_be32 (struct wpabuf*,int) ;

struct wpabuf * eap_teap_tlv_error(enum teap_error_codes error)
{
 struct wpabuf *buf;

 buf = wpabuf_alloc(4 + 4);
 if (!buf)
  return ((void*)0);
 wpa_printf(MSG_DEBUG, "EAP-TEAP: Add Error TLV(Error Code=%d)",
     error);
 wpabuf_put_be16(buf, TEAP_TLV_MANDATORY | TEAP_TLV_ERROR);
 wpabuf_put_be16(buf, 4);
 wpabuf_put_be32(buf, error);
 return buf;
}
