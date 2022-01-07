
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;


 int P2P_SERV_P2PS ;
 size_t os_strlen (char const*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_put_data (struct wpabuf*,char const*,size_t) ;
 int wpabuf_put_le16 (struct wpabuf*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;
 int wpas_p2p_sd_request (struct wpa_supplicant*,int const*,struct wpabuf*) ;

u64 wpas_p2p_sd_request_asp(struct wpa_supplicant *wpa_s, const u8 *dst, u8 id,
       const char *svc_str, const char *info_substr)
{
 struct wpabuf *tlvs;
 size_t plen, svc_len, substr_len = 0;
 u64 ret;

 svc_len = os_strlen(svc_str);
 if (info_substr)
  substr_len = os_strlen(info_substr);

 if (svc_len > 0xff || substr_len > 0xff)
  return 0;

 plen = 1 + 1 + 1 + svc_len + 1 + substr_len;
 tlvs = wpabuf_alloc(2 + plen);
 if (tlvs == ((void*)0))
  return 0;

 wpabuf_put_le16(tlvs, plen);
 wpabuf_put_u8(tlvs, P2P_SERV_P2PS);
 wpabuf_put_u8(tlvs, id);
 wpabuf_put_u8(tlvs, (u8) svc_len);
 wpabuf_put_data(tlvs, svc_str, svc_len);
 wpabuf_put_u8(tlvs, (u8) substr_len);
 wpabuf_put_data(tlvs, info_substr, substr_len);
 ret = wpas_p2p_sd_request(wpa_s, dst, tlvs);
 wpabuf_free(tlvs);

 return ret;
}
