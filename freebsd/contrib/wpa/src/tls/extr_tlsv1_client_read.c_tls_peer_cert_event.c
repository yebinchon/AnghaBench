
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int hash_len; int depth; char* subject; int * hash; struct wpabuf* cert; } ;
union tls_event_data {TYPE_2__ peer_cert; } ;
typedef int u8 ;
typedef int subject ;
struct x509_certificate {int subject; int cert_len; int cert_start; } ;
struct wpabuf {int dummy; } ;
struct tlsv1_client {int cb_ctx; int (* event_cb ) (int ,int ,union tls_event_data*) ;scalar_t__ cert_in_cb; TYPE_1__* cred; } ;
typedef int hash ;
typedef int ev ;
struct TYPE_3__ {scalar_t__ cert_probe; } ;


 int TLS_PEER_CERTIFICATE ;
 int os_memset (union tls_event_data*,int ,int) ;
 scalar_t__ sha256_vector (int,int const**,size_t*,int *) ;
 int stub1 (int ,int ,union tls_event_data*) ;
 struct wpabuf* wpabuf_alloc_copy (int ,int ) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpabuf_head (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;
 int x509_name_string (int *,char*,int) ;

__attribute__((used)) static void tls_peer_cert_event(struct tlsv1_client *conn, int depth,
    struct x509_certificate *cert)
{
 union tls_event_data ev;
 struct wpabuf *cert_buf = ((void*)0);



 char subject[128];

 if (!conn->event_cb)
  return;

 os_memset(&ev, 0, sizeof(ev));
 if ((conn->cred && conn->cred->cert_probe) || conn->cert_in_cb) {
  cert_buf = wpabuf_alloc_copy(cert->cert_start,
          cert->cert_len);
  ev.peer_cert.cert = cert_buf;
 }
 ev.peer_cert.depth = depth;
 x509_name_string(&cert->subject, subject, sizeof(subject));
 ev.peer_cert.subject = subject;

 conn->event_cb(conn->cb_ctx, TLS_PEER_CERTIFICATE, &ev);
 wpabuf_free(cert_buf);
}
