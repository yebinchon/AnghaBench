
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;


 int P2P_SERV_UPNP ;
 scalar_t__ os_strlen (char const*) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_put_le16 (struct wpabuf*,scalar_t__) ;
 int wpabuf_put_str (struct wpabuf*,char const*) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;
 int wpas_p2p_sd_request (struct wpa_supplicant*,int const*,struct wpabuf*) ;

u64 wpas_p2p_sd_request_upnp(struct wpa_supplicant *wpa_s, const u8 *dst,
        u8 version, const char *query)
{
 struct wpabuf *tlvs;
 u64 ret;

 tlvs = wpabuf_alloc(2 + 1 + 1 + 1 + os_strlen(query));
 if (tlvs == ((void*)0))
  return 0;
 wpabuf_put_le16(tlvs, 1 + 1 + 1 + os_strlen(query));
 wpabuf_put_u8(tlvs, P2P_SERV_UPNP);
 wpabuf_put_u8(tlvs, 1);
 wpabuf_put_u8(tlvs, version);
 wpabuf_put_str(tlvs, query);
 ret = wpas_p2p_sd_request(wpa_s, dst, tlvs);
 wpabuf_free(tlvs);
 return ret;
}
