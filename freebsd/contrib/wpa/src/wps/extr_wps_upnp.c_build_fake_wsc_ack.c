
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int ATTR_ENROLLEE_NONCE ;
 int ATTR_REGISTRAR_NONCE ;
 int UPNP_WPS_WLANEVENT_TYPE_EAP ;
 int WPS_NONCE_LEN ;
 int WPS_WSC_ACK ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,int ) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_str (struct wpabuf*,char*) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;
 scalar_t__ wps_build_msg_type (struct wpabuf*,int ) ;
 scalar_t__ wps_build_version (struct wpabuf*) ;
 scalar_t__ wps_build_wfa_ext (struct wpabuf*,int ,int *,int ,int ) ;

__attribute__((used)) static struct wpabuf * build_fake_wsc_ack(void)
{
 struct wpabuf *msg = wpabuf_alloc(100);
 if (msg == ((void*)0))
  return ((void*)0);
 wpabuf_put_u8(msg, UPNP_WPS_WLANEVENT_TYPE_EAP);
 wpabuf_put_str(msg, "00:00:00:00:00:00");
 if (wps_build_version(msg) ||
     wps_build_msg_type(msg, WPS_WSC_ACK)) {
  wpabuf_free(msg);
  return ((void*)0);
 }

 wpabuf_put_be16(msg, ATTR_ENROLLEE_NONCE);
 wpabuf_put_be16(msg, WPS_NONCE_LEN);
 wpabuf_put(msg, WPS_NONCE_LEN);

 wpabuf_put_be16(msg, ATTR_REGISTRAR_NONCE);
 wpabuf_put_be16(msg, WPS_NONCE_LEN);
 wpabuf_put(msg, WPS_NONCE_LEN);
 if (wps_build_wfa_ext(msg, 0, ((void*)0), 0, 0)) {
  wpabuf_free(msg);
  return ((void*)0);
 }
 return msg;
}
