
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_local; char* type; int description; } ;
union tls_event_data {TYPE_1__ alert; } ;
struct tls_context {int cb_ctx; int (* event_cb ) (int ,int ,union tls_event_data*) ;} ;
struct tls_connection {struct tls_context* context; int write_alerts; int read_alerts; } ;
typedef int ev ;
typedef int SSL ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int SSL3_AL_FATAL ;
 int SSL_CB_ALERT ;
 int SSL_CB_EXIT ;
 int SSL_CB_LOOP ;
 int SSL_CB_READ ;
 int SSL_ST_ACCEPT ;
 int SSL_ST_CONNECT ;
 int SSL_ST_MASK ;
 int SSL_alert_desc_string_long (int) ;
 char* SSL_alert_type_string_long (int) ;
 struct tls_connection* SSL_get_app_data (int *) ;
 int SSL_state_string_long (int const*) ;
 int TLS_ALERT ;
 int os_memset (union tls_event_data*,int ,int) ;
 int stub1 (int ,int ,union tls_event_data*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void ssl_info_cb(const SSL *ssl, int where, int ret)
{
 const char *str;
 int w;

 wpa_printf(MSG_DEBUG, "SSL: (where=0x%x ret=0x%x)", where, ret);
 w = where & ~SSL_ST_MASK;
 if (w & SSL_ST_CONNECT)
  str = "SSL_connect";
 else if (w & SSL_ST_ACCEPT)
  str = "SSL_accept";
 else
  str = "undefined";

 if (where & SSL_CB_LOOP) {
  wpa_printf(MSG_DEBUG, "SSL: %s:%s",
      str, SSL_state_string_long(ssl));
 } else if (where & SSL_CB_ALERT) {
  struct tls_connection *conn = SSL_get_app_data((SSL *) ssl);
  wpa_printf(MSG_INFO, "SSL: SSL3 alert: %s:%s:%s",
      where & SSL_CB_READ ?
      "read (remote end reported an error)" :
      "write (local SSL3 detected an error)",
      SSL_alert_type_string_long(ret),
      SSL_alert_desc_string_long(ret));
  if ((ret >> 8) == SSL3_AL_FATAL) {
   if (where & SSL_CB_READ)
    conn->read_alerts++;
   else
    conn->write_alerts++;
  }
  if (conn->context->event_cb != ((void*)0)) {
   union tls_event_data ev;
   struct tls_context *context = conn->context;
   os_memset(&ev, 0, sizeof(ev));
   ev.alert.is_local = !(where & SSL_CB_READ);
   ev.alert.type = SSL_alert_type_string_long(ret);
   ev.alert.description = SSL_alert_desc_string_long(ret);
   context->event_cb(context->cb_ctx, TLS_ALERT, &ev);
  }
 } else if (where & SSL_CB_EXIT && ret <= 0) {
  wpa_printf(MSG_DEBUG, "SSL: %s:%s in %s",
      str, ret == 0 ? "failed" : "error",
      SSL_state_string_long(ssl));
 }
}
