
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int hash_len; unsigned int depth; char* subject; int * hash; struct wpabuf* cert; } ;
union tls_event_data {TYPE_1__ peer_cert; void* data; int type; } ;
typedef int u8 ;
struct wpabuf {int dummy; } ;
struct tls_connection {int failed; TYPE_2__* global; int disable_time_checks; int domain_match; int suffix_match; scalar_t__ verify_peer; } ;
struct os_time {scalar_t__ sec; } ;
typedef int hash ;
typedef int gnutls_x509_crt_t ;
typedef union tls_event_data gnutls_typed_vdata_st ;
typedef int gnutls_session_t ;
struct TYPE_10__ {size_t size; int * data; } ;
typedef TYPE_3__ gnutls_datum_t ;
typedef int gnutls_alert_description_t ;
typedef int ev ;
typedef int data ;
struct TYPE_9__ {int cb_ctx; int (* event_cb ) (int ,int ,union tls_event_data*) ;int server; scalar_t__ cert_in_cb; } ;


 int GNUTLS_AL_FATAL ;
 int GNUTLS_A_BAD_CERTIFICATE ;
 int GNUTLS_A_CERTIFICATE_EXPIRED ;
 int GNUTLS_A_CERTIFICATE_REVOKED ;
 int GNUTLS_A_INSUFFICIENT_SECURITY ;
 int GNUTLS_A_INTERNAL_ERROR ;
 int GNUTLS_A_UNKNOWN_CA ;
 unsigned int GNUTLS_CERT_EXPIRED ;
 unsigned int GNUTLS_CERT_INSECURE_ALGORITHM ;
 unsigned int GNUTLS_CERT_INVALID ;
 unsigned int GNUTLS_CERT_NOT_ACTIVATED ;
 unsigned int GNUTLS_CERT_REVOKED ;
 unsigned int GNUTLS_CERT_SIGNER_NOT_FOUND ;
 int GNUTLS_DT_KEY_PURPOSE_OID ;
 int GNUTLS_E_CERTIFICATE_ERROR ;
 scalar_t__ GNUTLS_KP_TLS_WWW_SERVER ;
 int GNUTLS_X509_FMT_DER ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_WARNING ;
 int TLS_CERT_CHAIN_SUCCESS ;
 int TLS_FAIL_BAD_CERTIFICATE ;
 int TLS_FAIL_DOMAIN_MISMATCH ;
 int TLS_FAIL_DOMAIN_SUFFIX_MISMATCH ;
 int TLS_FAIL_EXPIRED ;
 int TLS_FAIL_NOT_YET_VALID ;
 int TLS_FAIL_REVOKED ;
 int TLS_FAIL_UNTRUSTED ;
 int TLS_PEER_CERTIFICATE ;
 scalar_t__ check_ocsp (struct tls_connection*,int ,int *) ;
 int gnutls_alert_send (int ,int ,int ) ;
 TYPE_3__* gnutls_certificate_get_peers (int ,unsigned int*) ;
 int gnutls_certificate_type_get (int ) ;
 int gnutls_certificate_verification_status_print (unsigned int,int,TYPE_3__*,int ) ;
 int gnutls_certificate_verify_peers (int ,union tls_event_data*,int,unsigned int*) ;
 int gnutls_certificate_verify_peers2 (int ,unsigned int*) ;
 int gnutls_free (int *) ;
 struct tls_connection* gnutls_session_get_ptr (int ) ;
 int gnutls_tls_fail_event (struct tls_connection*,TYPE_3__ const*,unsigned int,char*,char*,int ) ;
 int gnutls_x509_crt_deinit (int ) ;
 scalar_t__ gnutls_x509_crt_get_activation_time (int ) ;
 int gnutls_x509_crt_get_dn (int ,char*,size_t*) ;
 scalar_t__ gnutls_x509_crt_get_expiration_time (int ) ;
 scalar_t__ gnutls_x509_crt_import (int ,TYPE_3__ const*,int ) ;
 scalar_t__ gnutls_x509_crt_init (int *) ;
 int os_free (char*) ;
 int os_get_time (struct os_time*) ;
 char* os_malloc (size_t) ;
 int os_memset (union tls_event_data*,int ,int) ;
 int server_eku_purpose (int ) ;
 scalar_t__ sha256_vector (int,int const**,size_t*,int *) ;
 int stub1 (int ,int ,union tls_event_data*) ;
 int stub2 (int ,int ,union tls_event_data*) ;
 int tls_match_suffix (int ,int ,int) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc_copy (int *,size_t) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static int tls_connection_verify_peer(gnutls_session_t session)
{
 struct tls_connection *conn;
 unsigned int status, num_certs, i;
 struct os_time now;
 const gnutls_datum_t *certs;
 gnutls_x509_crt_t cert;
 gnutls_alert_description_t err;
 int res;

 conn = gnutls_session_get_ptr(session);
 if (!conn->verify_peer) {
  wpa_printf(MSG_DEBUG,
      "GnuTLS: No peer certificate verification enabled");
  return 0;
 }

 wpa_printf(MSG_DEBUG, "GnuTSL: Verifying peer certificate");
 res = gnutls_certificate_verify_peers2(session, &status);

 if (res < 0) {
  wpa_printf(MSG_INFO, "TLS: Failed to verify peer "
      "certificate chain");
  err = GNUTLS_A_INTERNAL_ERROR;
  goto out;
 }
 certs = gnutls_certificate_get_peers(session, &num_certs);
 if (certs == ((void*)0) || num_certs == 0) {
  wpa_printf(MSG_INFO, "TLS: No peer certificate chain received");
  err = GNUTLS_A_UNKNOWN_CA;
  goto out;
 }

 if (conn->verify_peer && (status & GNUTLS_CERT_INVALID)) {
  wpa_printf(MSG_INFO, "TLS: Peer certificate not trusted");
  if (status & GNUTLS_CERT_INSECURE_ALGORITHM) {
   wpa_printf(MSG_INFO, "TLS: Certificate uses insecure "
       "algorithm");
   gnutls_tls_fail_event(conn, ((void*)0), 0, ((void*)0),
           "certificate uses insecure algorithm",
           TLS_FAIL_BAD_CERTIFICATE);
   err = GNUTLS_A_INSUFFICIENT_SECURITY;
   goto out;
  }
  if (status & GNUTLS_CERT_NOT_ACTIVATED) {
   wpa_printf(MSG_INFO, "TLS: Certificate not yet "
       "activated");
   gnutls_tls_fail_event(conn, ((void*)0), 0, ((void*)0),
           "certificate not yet valid",
           TLS_FAIL_NOT_YET_VALID);
   err = GNUTLS_A_CERTIFICATE_EXPIRED;
   goto out;
  }
  if (status & GNUTLS_CERT_EXPIRED) {
   wpa_printf(MSG_INFO, "TLS: Certificate expired");
   gnutls_tls_fail_event(conn, ((void*)0), 0, ((void*)0),
           "certificate has expired",
           TLS_FAIL_EXPIRED);
   err = GNUTLS_A_CERTIFICATE_EXPIRED;
   goto out;
  }
  gnutls_tls_fail_event(conn, ((void*)0), 0, ((void*)0),
          "untrusted certificate",
          TLS_FAIL_UNTRUSTED);
  err = GNUTLS_A_INTERNAL_ERROR;
  goto out;
 }

 if (status & GNUTLS_CERT_SIGNER_NOT_FOUND) {
  wpa_printf(MSG_INFO, "TLS: Peer certificate does not have a "
      "known issuer");
  gnutls_tls_fail_event(conn, ((void*)0), 0, ((void*)0), "signed not found",
          TLS_FAIL_UNTRUSTED);
  err = GNUTLS_A_UNKNOWN_CA;
  goto out;
 }

 if (status & GNUTLS_CERT_REVOKED) {
  wpa_printf(MSG_INFO, "TLS: Peer certificate has been revoked");
  gnutls_tls_fail_event(conn, ((void*)0), 0, ((void*)0),
          "certificate revoked",
          TLS_FAIL_REVOKED);
  err = GNUTLS_A_CERTIFICATE_REVOKED;
  goto out;
 }

 if (status != 0) {
  wpa_printf(MSG_INFO, "TLS: Unknown verification status: %d",
      status);
  err = GNUTLS_A_INTERNAL_ERROR;
  goto out;
 }

 if (check_ocsp(conn, session, &err))
  goto out;

 os_get_time(&now);

 for (i = 0; i < num_certs; i++) {
  char *buf;
  size_t len;
  if (gnutls_x509_crt_init(&cert) < 0) {
   wpa_printf(MSG_INFO, "TLS: Certificate initialization "
       "failed");
   err = GNUTLS_A_BAD_CERTIFICATE;
   goto out;
  }

  if (gnutls_x509_crt_import(cert, &certs[i],
        GNUTLS_X509_FMT_DER) < 0) {
   wpa_printf(MSG_INFO, "TLS: Could not parse peer "
       "certificate %d/%d", i + 1, num_certs);
   gnutls_x509_crt_deinit(cert);
   err = GNUTLS_A_BAD_CERTIFICATE;
   goto out;
  }

  gnutls_x509_crt_get_dn(cert, ((void*)0), &len);
  len++;
  buf = os_malloc(len + 1);
  if (buf) {
   buf[0] = buf[len] = '\0';
   gnutls_x509_crt_get_dn(cert, buf, &len);
  }
  wpa_printf(MSG_DEBUG, "TLS: Peer cert chain %d/%d: %s",
      i + 1, num_certs, buf);

  if (conn->global->event_cb) {
   struct wpabuf *cert_buf = ((void*)0);
   union tls_event_data ev;






   os_memset(&ev, 0, sizeof(ev));
   if (conn->global->cert_in_cb) {
    cert_buf = wpabuf_alloc_copy(certs[i].data,
            certs[i].size);
    ev.peer_cert.cert = cert_buf;
   }
   ev.peer_cert.depth = i;
   ev.peer_cert.subject = buf;
   conn->global->event_cb(conn->global->cb_ctx,
            TLS_PEER_CERTIFICATE, &ev);
   wpabuf_free(cert_buf);
  }

  if (i == 0) {
   if (conn->suffix_match &&
       !tls_match_suffix(cert, conn->suffix_match, 0)) {
    wpa_printf(MSG_WARNING,
        "TLS: Domain suffix match '%s' not found",
        conn->suffix_match);
    gnutls_tls_fail_event(
     conn, &certs[i], i, buf,
     "Domain suffix mismatch",
     TLS_FAIL_DOMAIN_SUFFIX_MISMATCH);
    err = GNUTLS_A_BAD_CERTIFICATE;
    gnutls_x509_crt_deinit(cert);
    os_free(buf);
    goto out;
   }
   if (!conn->global->server &&
       !server_eku_purpose(cert)) {
    wpa_printf(MSG_WARNING,
        "GnuTLS: No server EKU");
    gnutls_tls_fail_event(
     conn, &certs[i], i, buf,
     "No server EKU",
     TLS_FAIL_BAD_CERTIFICATE);
    err = GNUTLS_A_BAD_CERTIFICATE;
    gnutls_x509_crt_deinit(cert);
    os_free(buf);
    goto out;
   }

  }

  if (!conn->disable_time_checks &&
      (gnutls_x509_crt_get_expiration_time(cert) < now.sec ||
       gnutls_x509_crt_get_activation_time(cert) > now.sec)) {
   wpa_printf(MSG_INFO, "TLS: Peer certificate %d/%d is "
       "not valid at this time",
       i + 1, num_certs);
   gnutls_tls_fail_event(
    conn, &certs[i], i, buf,
    "Certificate is not valid at this time",
    TLS_FAIL_EXPIRED);
   gnutls_x509_crt_deinit(cert);
   os_free(buf);
   err = GNUTLS_A_CERTIFICATE_EXPIRED;
   goto out;
  }

  os_free(buf);

  gnutls_x509_crt_deinit(cert);
 }

 if (conn->global->event_cb != ((void*)0))
  conn->global->event_cb(conn->global->cb_ctx,
           TLS_CERT_CHAIN_SUCCESS, ((void*)0));

 return 0;

out:
 conn->failed++;
 gnutls_alert_send(session, GNUTLS_AL_FATAL, err);
 return GNUTLS_E_CERTIFICATE_ERROR;
}
