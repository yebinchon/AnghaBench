
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;
struct ttls_avp {int dummy; } ;


 int AVP_PAD (int *,int *) ;
 int * eap_ttls_avp_hdr (int *,int ,int ,int,scalar_t__) ;
 int os_memcpy (int *,int ,scalar_t__) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_clear_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;
 int * wpabuf_mhead (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static int eap_ttls_avp_encapsulate(struct wpabuf **resp, u32 avp_code,
        int mandatory)
{
 struct wpabuf *msg;
 u8 *avp, *pos;

 msg = wpabuf_alloc(sizeof(struct ttls_avp) + wpabuf_len(*resp) + 4);
 if (msg == ((void*)0)) {
  wpabuf_clear_free(*resp);
  *resp = ((void*)0);
  return -1;
 }

 avp = wpabuf_mhead(msg);
 pos = eap_ttls_avp_hdr(avp, avp_code, 0, mandatory, wpabuf_len(*resp));
 os_memcpy(pos, wpabuf_head(*resp), wpabuf_len(*resp));
 pos += wpabuf_len(*resp);
 AVP_PAD(avp, pos);
 wpabuf_clear_free(*resp);
 wpabuf_put(msg, pos - avp);
 *resp = msg;
 return 0;
}
