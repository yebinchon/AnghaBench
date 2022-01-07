
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int conn; } ;
struct eap_ttls_data {TYPE_1__ ssl; } ;
struct eap_sm {int identity_len; int identity; int tls_session_lifetime; } ;


 int EAP_TYPE_TTLS ;
 int tls_connection_set_success_data (int ,struct wpabuf*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_put_data (struct wpabuf*,int ,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static void eap_ttls_valid_session(struct eap_sm *sm,
       struct eap_ttls_data *data)
{
 struct wpabuf *buf;

 if (!sm->tls_session_lifetime)
  return;

 buf = wpabuf_alloc(1 + 1 + sm->identity_len);
 if (!buf)
  return;
 wpabuf_put_u8(buf, EAP_TYPE_TTLS);
 if (sm->identity) {
  u8 id_len;

  if (sm->identity_len <= 255)
   id_len = sm->identity_len;
  else
   id_len = 255;
  wpabuf_put_u8(buf, id_len);
  wpabuf_put_data(buf, sm->identity, id_len);
 } else {
  wpabuf_put_u8(buf, 0);
 }
 tls_connection_set_success_data(data->ssl.conn, buf);
}
