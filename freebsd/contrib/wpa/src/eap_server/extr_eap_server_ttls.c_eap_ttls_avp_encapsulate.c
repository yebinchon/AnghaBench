
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;
struct ttls_avp {int dummy; } ;


 int AVP_PAD (int const*,int *) ;
 int * eap_ttls_avp_hdr (int ,int ,int ,int,scalar_t__) ;
 int os_memcpy (int *,scalar_t__,scalar_t__) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_head (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;
 int wpabuf_mhead (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_ttls_avp_encapsulate(struct wpabuf *resp,
      u32 avp_code, int mandatory)
{
 struct wpabuf *avp;
 u8 *pos;

 avp = wpabuf_alloc(sizeof(struct ttls_avp) + wpabuf_len(resp) + 4);
 if (avp == ((void*)0)) {
  wpabuf_free(resp);
  return ((void*)0);
 }

 pos = eap_ttls_avp_hdr(wpabuf_mhead(avp), avp_code, 0, mandatory,
          wpabuf_len(resp));
 os_memcpy(pos, wpabuf_head(resp), wpabuf_len(resp));
 pos += wpabuf_len(resp);
 AVP_PAD((const u8 *) wpabuf_head(avp), pos);
 wpabuf_free(resp);
 wpabuf_put(avp, pos - (u8 *) wpabuf_head(avp));
 return avp;
}
