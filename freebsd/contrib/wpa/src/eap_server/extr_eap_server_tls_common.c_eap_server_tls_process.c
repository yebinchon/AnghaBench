
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef struct wpabuf const wpabuf ;
struct eap_ssl_data {int conn; } ;
struct eap_sm {int ssl_ctx; } ;


 int EAP_TLS_VERSION_MASK ;
 int EAP_UNAUTH_TLS_TYPE ;
 int EAP_VENDOR_IETF ;
 int EAP_VENDOR_TYPE_UNAUTH_TLS ;
 int EAP_VENDOR_UNAUTH_TLS ;
 int EAP_VENDOR_WFA_NEW ;
 int EAP_VENDOR_WFA_UNAUTH_TLS ;
 int EAP_WFA_UNAUTH_TLS_TYPE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int* eap_hdr_validate (int ,int,struct wpabuf const*,size_t*) ;
 int eap_server_tls_free_in_buf (struct eap_ssl_data*) ;
 int eap_server_tls_reassemble (struct eap_ssl_data*,int,int const**,size_t*) ;
 int tls_connection_get_write_alerts (int ,int ) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wpabuf_len (struct wpabuf const*) ;

int eap_server_tls_process(struct eap_sm *sm, struct eap_ssl_data *data,
      struct wpabuf *respData, void *priv, int eap_type,
      int (*proc_version)(struct eap_sm *sm, void *priv,
            int peer_version),
      void (*proc_msg)(struct eap_sm *sm, void *priv,
         const struct wpabuf *respData))
{
 const u8 *pos;
 u8 flags;
 size_t left;
 int ret, res = 0;

 if (eap_type == EAP_UNAUTH_TLS_TYPE)
  pos = eap_hdr_validate(EAP_VENDOR_UNAUTH_TLS,
           EAP_VENDOR_TYPE_UNAUTH_TLS, respData,
           &left);
 else if (eap_type == EAP_WFA_UNAUTH_TLS_TYPE)
  pos = eap_hdr_validate(EAP_VENDOR_WFA_NEW,
           EAP_VENDOR_WFA_UNAUTH_TLS, respData,
           &left);
 else
  pos = eap_hdr_validate(EAP_VENDOR_IETF, eap_type, respData,
           &left);
 if (pos == ((void*)0) || left < 1)
  return 0;
 flags = *pos++;
 left--;
 wpa_printf(MSG_DEBUG, "SSL: Received packet(len=%lu) - Flags 0x%02x",
     (unsigned long) wpabuf_len(respData), flags);

 if (proc_version &&
     proc_version(sm, priv, flags & EAP_TLS_VERSION_MASK) < 0)
  return -1;

 ret = eap_server_tls_reassemble(data, flags, &pos, &left);
 if (ret < 0) {
  res = -1;
  goto done;
 } else if (ret == 1)
  return 0;

 if (proc_msg)
  proc_msg(sm, priv, respData);

 if (tls_connection_get_write_alerts(sm->ssl_ctx, data->conn) > 1) {
  wpa_printf(MSG_INFO, "SSL: Locally detected fatal error in "
      "TLS processing");
  res = -1;
 }

done:
 eap_server_tls_free_in_buf(data);

 return res;
}
