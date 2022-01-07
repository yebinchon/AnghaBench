
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct wpabuf {int dummy; } ;
typedef int correlation_id ;


 int EAP_TLV_VENDOR_SPECIFIC_TLV ;
 int EAP_VENDOR_MICROSOFT ;
 int MSG_DEBUG ;
 int SSOH_MS_CORRELATIONID ;
 int SSOH_MS_MACHINENAME ;
 int SSOH_MS_MACHINE_INVENTORY ;
 int SSOH_MS_MACHINE_INVENTORY_EX ;
 int SSOH_MS_PACKET_INFO ;
 int SSOH_MS_QUARANTINE_STATE ;
 int WPA_PUT_BE16 (char*,int) ;
 scalar_t__ os_get_random (char*,int) ;
 int os_strlen (char*) ;
 int wpa_hexdump (int ,char*,char*,int) ;
 struct wpabuf* wpabuf_alloc (int) ;
 char* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_be32 (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,char*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * tncc_build_soh(int ver)
{
 struct wpabuf *buf;
 u8 *tlv_len, *tlv_len2, *outer_len, *inner_len, *ssoh_len, *end;
 u8 correlation_id[24];

 char *machinename = "wpa_supplicant@w1.fi";

 if (os_get_random(correlation_id, sizeof(correlation_id)))
  return ((void*)0);
 wpa_hexdump(MSG_DEBUG, "TNC: SoH Correlation ID",
      correlation_id, sizeof(correlation_id));

 buf = wpabuf_alloc(200);
 if (buf == ((void*)0))
  return ((void*)0);


 wpabuf_put_be16(buf, EAP_TLV_VENDOR_SPECIFIC_TLV);
 tlv_len = wpabuf_put(buf, 2);
 wpabuf_put_be32(buf, EAP_VENDOR_MICROSOFT);
 wpabuf_put_be16(buf, 0x01);
 tlv_len2 = wpabuf_put(buf, 2);


 wpabuf_put_be16(buf, EAP_TLV_VENDOR_SPECIFIC_TLV);
 outer_len = wpabuf_put(buf, 2);
 wpabuf_put_be32(buf, EAP_VENDOR_MICROSOFT);
 wpabuf_put_be16(buf, ver);
 inner_len = wpabuf_put(buf, 2);

 if (ver == 2) {


  wpabuf_put_be16(buf, EAP_TLV_VENDOR_SPECIFIC_TLV);
  wpabuf_put_be16(buf, 4 + 24 + 1 + 1);
  wpabuf_put_be32(buf, EAP_VENDOR_MICROSOFT);

  wpabuf_put_data(buf, correlation_id, sizeof(correlation_id));
  wpabuf_put_u8(buf, 0x01);
  wpabuf_put_u8(buf, 0x00);
 }



 wpabuf_put_be16(buf, 0x0002);
 wpabuf_put_be16(buf, 4);
 wpabuf_put_be32(buf, 79616);

 wpabuf_put_be16(buf, EAP_TLV_VENDOR_SPECIFIC_TLV);
 ssoh_len = wpabuf_put(buf, 2);
 wpabuf_put_be32(buf, EAP_VENDOR_MICROSOFT);


 wpabuf_put_u8(buf, SSOH_MS_PACKET_INFO);






 wpabuf_put_u8(buf, 0x11);



 wpabuf_put_u8(buf, SSOH_MS_MACHINE_INVENTORY);
 wpabuf_put_be32(buf, 0);
 wpabuf_put_be32(buf, 0);
 wpabuf_put_be32(buf, 0);
 wpabuf_put_be16(buf, 0);
 wpabuf_put_be16(buf, 0);
 wpabuf_put_be16(buf, 0);


 wpabuf_put_u8(buf, SSOH_MS_MACHINENAME);
 wpabuf_put_be16(buf, os_strlen(machinename) + 1);
 wpabuf_put_data(buf, machinename, os_strlen(machinename) + 1);


 wpabuf_put_u8(buf, SSOH_MS_CORRELATIONID);
 wpabuf_put_data(buf, correlation_id, sizeof(correlation_id));


 wpabuf_put_u8(buf, SSOH_MS_QUARANTINE_STATE);
 wpabuf_put_be16(buf, 1);
 wpabuf_put_be32(buf, 0xffffffff);
 wpabuf_put_be32(buf, 0xffffffff);
 wpabuf_put_be16(buf, 1);
 wpabuf_put_u8(buf, 0);


 wpabuf_put_u8(buf, SSOH_MS_MACHINE_INVENTORY_EX);
 wpabuf_put_be32(buf, 0);

 wpabuf_put_u8(buf, 1);


 end = wpabuf_put(buf, 0);
 WPA_PUT_BE16(ssoh_len, end - ssoh_len - 2);




 end = wpabuf_put(buf, 0);
 WPA_PUT_BE16(tlv_len, end - tlv_len - 2);
 WPA_PUT_BE16(tlv_len2, end - tlv_len2 - 2);
 WPA_PUT_BE16(outer_len, end - outer_len - 2);
 WPA_PUT_BE16(inner_len, end - inner_len - 2);

 return buf;
}
