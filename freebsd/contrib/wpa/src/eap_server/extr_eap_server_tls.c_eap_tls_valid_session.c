
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct TYPE_2__ {int conn; } ;
struct eap_tls_data {TYPE_1__ ssl; int eap_type; } ;
struct eap_sm {int tls_session_lifetime; } ;


 int tls_connection_set_success_data (int ,struct wpabuf*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static void eap_tls_valid_session(struct eap_sm *sm, struct eap_tls_data *data)
{
 struct wpabuf *buf;

 if (!sm->tls_session_lifetime)
  return;

 buf = wpabuf_alloc(1);
 if (!buf)
  return;
 wpabuf_put_u8(buf, data->eap_type);
 tls_connection_set_success_data(data->ssl.conn, buf);
}
