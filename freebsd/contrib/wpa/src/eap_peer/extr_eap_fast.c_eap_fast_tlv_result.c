
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_tlv_intermediate_result_tlv {void* status; void* length; void* tlv_type; } ;


 int EAP_TLV_INTERMEDIATE_RESULT_TLV ;
 int EAP_TLV_RESULT_TLV ;
 int EAP_TLV_TYPE_MANDATORY ;
 int MSG_DEBUG ;
 void* host_to_be16 (int) ;
 int wpa_printf (int ,char*,char*,int) ;
 struct wpabuf* wpabuf_alloc (int) ;
 struct eap_tlv_intermediate_result_tlv* wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_fast_tlv_result(int status, int intermediate)
{
 struct wpabuf *buf;
 struct eap_tlv_intermediate_result_tlv *result;
 buf = wpabuf_alloc(sizeof(*result));
 if (buf == ((void*)0))
  return ((void*)0);
 wpa_printf(MSG_DEBUG, "EAP-FAST: Add %sResult TLV(status=%d)",
     intermediate ? "Intermediate " : "", status);
 result = wpabuf_put(buf, sizeof(*result));
 result->tlv_type = host_to_be16(EAP_TLV_TYPE_MANDATORY |
     (intermediate ?
      EAP_TLV_INTERMEDIATE_RESULT_TLV :
      EAP_TLV_RESULT_TLV));
 result->length = host_to_be16(2);
 result->status = host_to_be16(status);
 return buf;
}
