
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int hash_len; int depth; char const* subject; char* serial_num; char** altsubject; int num_altsubject; int tod; int * hash; struct wpabuf* cert; } ;
union tls_event_data {TYPE_3__ peer_cert; } ;
typedef int u8 ;
struct wpabuf {int dummy; } ;
struct tls_context {int cb_ctx; int (* event_cb ) (int ,int ,union tls_event_data*) ;scalar_t__ cert_in_cb; } ;
struct tls_connection {int flags; scalar_t__ cert_probe; struct tls_context* context; } ;
typedef scalar_t__ stack_index_t ;
typedef int serial_num ;
typedef int hash ;
typedef int ev ;
typedef int X509 ;
struct TYPE_7__ {TYPE_1__* ia5; } ;
struct TYPE_9__ {int type; TYPE_2__ d; } ;
struct TYPE_6__ {int length; char* data; } ;
typedef TYPE_4__ GENERAL_NAME ;
typedef int ASN1_INTEGER ;


 int ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 int GENERAL_NAME_free ;



 int NID_subject_alt_name ;
 int TLS_CONN_EXT_CERT_CHECK ;
 int TLS_MAX_ALT_SUBJECT ;
 int TLS_PEER_CERTIFICATE ;
 void* X509_get_ext_d2i (int *,int ,int *,int *) ;
 int * X509_get_serialNumber (int *) ;
 struct wpabuf* get_x509_cert (int *) ;
 int openssl_cert_tod (int *) ;
 int os_free (char*) ;
 char* os_malloc (scalar_t__) ;
 int os_memcpy (char*,char*,int) ;
 int os_memset (union tls_event_data*,int ,int) ;
 scalar_t__ sha256_vector (int,int const**,size_t*,int *) ;
 scalar_t__ sk_GENERAL_NAME_num (void*) ;
 int sk_GENERAL_NAME_pop_free (void*,int ) ;
 TYPE_4__* sk_GENERAL_NAME_value (void*,scalar_t__) ;
 int stub1 (int ,int ,union tls_event_data*) ;
 int wpa_snprintf_hex_uppercase (char*,int,int ,int ) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpabuf_head (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static void openssl_tls_cert_event(struct tls_connection *conn,
       X509 *err_cert, int depth,
       const char *subject)
{
 struct wpabuf *cert = ((void*)0);
 union tls_event_data ev;
 struct tls_context *context = conn->context;
 char *altsubject[TLS_MAX_ALT_SUBJECT];
 int alt, num_altsubject = 0;
 GENERAL_NAME *gen;
 void *ext;
 stack_index_t i;
 ASN1_INTEGER *ser;
 char serial_num[128];




 if (context->event_cb == ((void*)0))
  return;

 os_memset(&ev, 0, sizeof(ev));
 if (conn->cert_probe || (conn->flags & TLS_CONN_EXT_CERT_CHECK) ||
     context->cert_in_cb) {
  cert = get_x509_cert(err_cert);
  ev.peer_cert.cert = cert;
 }
 ev.peer_cert.depth = depth;
 ev.peer_cert.subject = subject;

 ser = X509_get_serialNumber(err_cert);
 if (ser) {
  wpa_snprintf_hex_uppercase(serial_num, sizeof(serial_num),
        ASN1_STRING_get0_data(ser),
        ASN1_STRING_length(ser));
  ev.peer_cert.serial_num = serial_num;
 }

 ext = X509_get_ext_d2i(err_cert, NID_subject_alt_name, ((void*)0), ((void*)0));
 for (i = 0; ext && i < sk_GENERAL_NAME_num(ext); i++) {
  char *pos;

  if (num_altsubject == TLS_MAX_ALT_SUBJECT)
   break;
  gen = sk_GENERAL_NAME_value(ext, i);
  if (gen->type != 129 &&
      gen->type != 130 &&
      gen->type != 128)
   continue;

  pos = os_malloc(10 + gen->d.ia5->length + 1);
  if (pos == ((void*)0))
   break;
  altsubject[num_altsubject++] = pos;

  switch (gen->type) {
  case 129:
   os_memcpy(pos, "EMAIL:", 6);
   pos += 6;
   break;
  case 130:
   os_memcpy(pos, "DNS:", 4);
   pos += 4;
   break;
  case 128:
   os_memcpy(pos, "URI:", 4);
   pos += 4;
   break;
  }

  os_memcpy(pos, gen->d.ia5->data, gen->d.ia5->length);
  pos += gen->d.ia5->length;
  *pos = '\0';
 }
 sk_GENERAL_NAME_pop_free(ext, GENERAL_NAME_free);

 for (alt = 0; alt < num_altsubject; alt++)
  ev.peer_cert.altsubject[alt] = altsubject[alt];
 ev.peer_cert.num_altsubject = num_altsubject;

 ev.peer_cert.tod = openssl_cert_tod(err_cert);

 context->event_cb(context->cb_ctx, TLS_PEER_CERTIFICATE, &ev);
 wpabuf_free(cert);
 for (alt = 0; alt < num_altsubject; alt++)
  os_free(altsubject[alt]);
}
