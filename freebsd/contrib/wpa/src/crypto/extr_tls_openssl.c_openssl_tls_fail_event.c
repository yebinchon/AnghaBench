
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reason; int depth; char const* subject; char const* reason_txt; struct wpabuf* cert; } ;
union tls_event_data {TYPE_1__ cert_fail; } ;
struct wpabuf {int dummy; } ;
struct tls_context {int cb_ctx; int (* event_cb ) (int ,int ,union tls_event_data*) ;} ;
struct tls_connection {struct tls_context* context; } ;
typedef int ev ;
typedef enum tls_fail_reason { ____Placeholder_tls_fail_reason } tls_fail_reason ;
typedef int X509 ;


 int TLS_CERT_CHAIN_FAILURE ;
 int TLS_FAIL_UNSPECIFIED ;
 struct wpabuf* get_x509_cert (int *) ;
 int openssl_tls_fail_reason (int) ;
 int os_memset (union tls_event_data*,int ,int) ;
 int stub1 (int ,int ,union tls_event_data*) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static void openssl_tls_fail_event(struct tls_connection *conn,
       X509 *err_cert, int err, int depth,
       const char *subject, const char *err_str,
       enum tls_fail_reason reason)
{
 union tls_event_data ev;
 struct wpabuf *cert = ((void*)0);
 struct tls_context *context = conn->context;

 if (context->event_cb == ((void*)0))
  return;

 cert = get_x509_cert(err_cert);
 os_memset(&ev, 0, sizeof(ev));
 ev.cert_fail.reason = reason != TLS_FAIL_UNSPECIFIED ?
  reason : openssl_tls_fail_reason(err);
 ev.cert_fail.depth = depth;
 ev.cert_fail.subject = subject;
 ev.cert_fail.reason_txt = err_str;
 ev.cert_fail.cert = cert;
 context->event_cb(context->cb_ctx, TLS_CERT_CHAIN_FAILURE, &ev);
 wpabuf_free(cert);
}
