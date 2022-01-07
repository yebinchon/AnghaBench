
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int depth; int reason; char const* reason_txt; struct wpabuf* cert; } ;
struct TYPE_3__ {char* subject; } ;
union tls_event_data {TYPE_2__ cert_fail; TYPE_1__ peer_cert; } ;
typedef int subject ;
struct x509_certificate {int cert_len; int cert_start; int subject; } ;
struct wpabuf {int dummy; } ;
struct tlsv1_client {int cb_ctx; int (* event_cb ) (int ,int ,union tls_event_data*) ;} ;
typedef int ev ;
typedef enum tls_fail_reason { ____Placeholder_tls_fail_reason } tls_fail_reason ;


 int TLS_CERT_CHAIN_FAILURE ;
 int os_memset (union tls_event_data*,int ,int) ;
 int stub1 (int ,int ,union tls_event_data*) ;
 struct wpabuf* wpabuf_alloc_copy (int ,int ) ;
 int wpabuf_free (struct wpabuf*) ;
 int x509_name_string (int *,char*,int) ;

__attribute__((used)) static void tls_cert_chain_failure_event(struct tlsv1_client *conn, int depth,
      struct x509_certificate *cert,
      enum tls_fail_reason reason,
      const char *reason_txt)
{
 struct wpabuf *cert_buf = ((void*)0);
 union tls_event_data ev;
 char subject[128];

 if (!conn->event_cb || !cert)
  return;

 os_memset(&ev, 0, sizeof(ev));
 ev.cert_fail.depth = depth;
 x509_name_string(&cert->subject, subject, sizeof(subject));
 ev.peer_cert.subject = subject;
 ev.cert_fail.reason = reason;
 ev.cert_fail.reason_txt = reason_txt;
 cert_buf = wpabuf_alloc_copy(cert->cert_start,
         cert->cert_len);
 ev.cert_fail.cert = cert_buf;
 conn->event_cb(conn->cb_ctx, TLS_CERT_CHAIN_FAILURE, &ev);
 wpabuf_free(cert_buf);
}
