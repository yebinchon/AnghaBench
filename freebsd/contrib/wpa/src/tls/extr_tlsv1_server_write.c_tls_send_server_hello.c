
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u8 ;
struct tlsv1_server {int state; scalar_t__ use_session_ticket; TYPE_1__* cred; scalar_t__ status_request_v2; scalar_t__ status_request; scalar_t__ status_request_multi; } ;
struct TYPE_2__ {scalar_t__ ocsp_stapling_response; scalar_t__ ocsp_stapling_response_multi; } ;


 int CHANGE_CIPHER_SPEC ;
 int CLIENT_CERTIFICATE ;
 int os_free (char*) ;
 char* os_malloc (size_t) ;
 char* os_readfile (scalar_t__,size_t*) ;
 int tls_server_cert_chain_der_len (struct tlsv1_server*) ;
 scalar_t__ tls_write_server_certificate (struct tlsv1_server*,char**,char*) ;
 scalar_t__ tls_write_server_certificate_request (struct tlsv1_server*,char**,char*) ;
 scalar_t__ tls_write_server_certificate_status (struct tlsv1_server*,char**,char*,int,char*,size_t) ;
 scalar_t__ tls_write_server_change_cipher_spec (struct tlsv1_server*,char**,char*) ;
 scalar_t__ tls_write_server_finished (struct tlsv1_server*,char**,char*) ;
 scalar_t__ tls_write_server_hello (struct tlsv1_server*,char**,char*) ;
 scalar_t__ tls_write_server_hello_done (struct tlsv1_server*,char**,char*) ;
 scalar_t__ tls_write_server_key_exchange (struct tlsv1_server*,char**,char*) ;

__attribute__((used)) static u8 * tls_send_server_hello(struct tlsv1_server *conn, size_t *out_len)
{
 u8 *msg, *end, *pos;
 size_t msglen;
 int ocsp_multi = 0;
 char *ocsp_resp = ((void*)0);
 size_t ocsp_resp_len = 0;

 *out_len = 0;

 if (conn->status_request_multi &&
     conn->cred->ocsp_stapling_response_multi) {
  ocsp_resp = os_readfile(
   conn->cred->ocsp_stapling_response_multi,
   &ocsp_resp_len);
  ocsp_multi = 1;
 } else if ((conn->status_request || conn->status_request_v2) &&
     conn->cred->ocsp_stapling_response) {
  ocsp_resp = os_readfile(conn->cred->ocsp_stapling_response,
     &ocsp_resp_len);
 }
 if (!ocsp_resp)
  ocsp_resp_len = 0;

 msglen = 1000 + tls_server_cert_chain_der_len(conn) + ocsp_resp_len;

 msg = os_malloc(msglen);
 if (msg == ((void*)0)) {
  os_free(ocsp_resp);
  return ((void*)0);
 }

 pos = msg;
 end = msg + msglen;

 if (tls_write_server_hello(conn, &pos, end) < 0) {
  os_free(msg);
  os_free(ocsp_resp);
  return ((void*)0);
 }

 if (conn->use_session_ticket) {
  os_free(ocsp_resp);


  if (tls_write_server_change_cipher_spec(conn, &pos, end) < 0 ||
      tls_write_server_finished(conn, &pos, end) < 0) {
   os_free(msg);
   return ((void*)0);
  }

  *out_len = pos - msg;

  conn->state = CHANGE_CIPHER_SPEC;

  return msg;
 }


 if (tls_write_server_certificate(conn, &pos, end) < 0 ||
     tls_write_server_certificate_status(conn, &pos, end, ocsp_multi,
      ocsp_resp, ocsp_resp_len) < 0 ||
     tls_write_server_key_exchange(conn, &pos, end) < 0 ||
     tls_write_server_certificate_request(conn, &pos, end) < 0 ||
     tls_write_server_hello_done(conn, &pos, end) < 0) {
  os_free(msg);
  os_free(ocsp_resp);
  return ((void*)0);
 }
 os_free(ocsp_resp);

 *out_len = pos - msg;

 conn->state = CLIENT_CERTIFICATE;

 return msg;
}
