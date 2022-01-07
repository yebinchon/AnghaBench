
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int depth; char const* subject; int reason; char const* reason_txt; struct wpabuf* cert; } ;
union tls_event_data {TYPE_1__ cert_fail; } ;
struct wpabuf {int dummy; } ;
struct tls_global {int cb_ctx; int (* event_cb ) (int ,int ,union tls_event_data*) ;} ;
struct tls_connection {struct tls_global* global; } ;
struct TYPE_5__ {int size; int data; } ;
typedef TYPE_2__ gnutls_datum_t ;
typedef int ev ;
typedef enum tls_fail_reason { ____Placeholder_tls_fail_reason } tls_fail_reason ;


 int TLS_CERT_CHAIN_FAILURE ;
 int os_memset (union tls_event_data*,int ,int) ;
 int stub1 (int ,int ,union tls_event_data*) ;
 struct wpabuf* wpabuf_alloc_copy (int ,int ) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static void gnutls_tls_fail_event(struct tls_connection *conn,
      const gnutls_datum_t *cert, int depth,
      const char *subject, const char *err_str,
      enum tls_fail_reason reason)
{
 union tls_event_data ev;
 struct tls_global *global = conn->global;
 struct wpabuf *cert_buf = ((void*)0);

 if (global->event_cb == ((void*)0))
  return;

 os_memset(&ev, 0, sizeof(ev));
 ev.cert_fail.depth = depth;
 ev.cert_fail.subject = subject ? subject : "";
 ev.cert_fail.reason = reason;
 ev.cert_fail.reason_txt = err_str;
 if (cert) {
  cert_buf = wpabuf_alloc_copy(cert->data, cert->size);
  ev.cert_fail.cert = cert_buf;
 }
 global->event_cb(global->cb_ctx, TLS_CERT_CHAIN_FAILURE, &ev);
 wpabuf_free(cert_buf);
}
