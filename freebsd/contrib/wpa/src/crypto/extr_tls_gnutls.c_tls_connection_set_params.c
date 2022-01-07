
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct tls_connection_params {int flags; char const* ca_cert; char const* private_key; int private_key_passwd; int private_key_blob_len; scalar_t__ private_key_blob; int client_cert_blob_len; scalar_t__ client_cert_blob; int client_cert; scalar_t__ ca_cert_blob; scalar_t__ ca_path; int ca_cert_blob_len; scalar_t__ openssl_ecdh_curves; scalar_t__ openssl_ciphers; scalar_t__ domain_match; scalar_t__ suffix_match; scalar_t__ altsubject_match; scalar_t__ subject_match; } ;
struct tls_connection {int flags; int disable_time_checks; int verify_peer; int params_set; int xcred; int session; int * domain_match; int * suffix_match; } ;
typedef int prio_buf ;
struct TYPE_8__ {unsigned char* data; int size; } ;
typedef TYPE_1__ gnutls_datum_t ;


 int GNUTLS_CRD_CERTIFICATE ;
 int GNUTLS_E_SUCCESS ;
 int GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD5 ;
 int GNUTLS_VERIFY_DISABLE_TIME_CHECKS ;
 int GNUTLS_X509_FMT_DER ;
 int GNUTLS_X509_FMT_PEM ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int TLS_CONN_ALLOW_SIGN_RSA_MD5 ;
 int TLS_CONN_DISABLE_TIME_CHECKS ;
 int TLS_CONN_DISABLE_TLSv1_0 ;
 int TLS_CONN_DISABLE_TLSv1_1 ;
 int TLS_CONN_DISABLE_TLSv1_2 ;
 int TLS_CONN_EXT_CERT_CHECK ;
 int TLS_CONN_REQUEST_OCSP ;
 int TLS_CONN_REQUIRE_OCSP ;
 int TLS_CONN_REQUIRE_OCSP_ALL ;
 int TLS_CONN_SUITEB ;
 int gnutls_certificate_set_verify_flags (int ,int ) ;
 int gnutls_certificate_set_verify_function (int ,int ) ;
 int gnutls_certificate_set_x509_key_file (int ,int ,char const*,int ) ;
 int gnutls_certificate_set_x509_key_file2 (int ,int ,char const*,int ,int ,int ) ;
 int gnutls_certificate_set_x509_key_mem (int ,TYPE_1__*,TYPE_1__*,int ) ;
 int gnutls_certificate_set_x509_key_mem2 (int ,TYPE_1__*,TYPE_1__*,int ,int ,int ) ;
 int gnutls_certificate_set_x509_simple_pkcs12_file (int ,char const*,int ,int ) ;
 int gnutls_certificate_set_x509_simple_pkcs12_mem (int ,TYPE_1__*,int ,int ) ;
 int gnutls_certificate_set_x509_trust_file (int ,char const*,int ) ;
 int gnutls_certificate_set_x509_trust_mem (int ,TYPE_1__*,int ) ;
 int gnutls_credentials_set (int ,int ,int ) ;
 int gnutls_ocsp_status_request_enable_client (int ,int *,int ,int *) ;
 int gnutls_priority_set_direct (int ,char const*,char const**) ;
 char const* gnutls_strerror (int) ;
 int os_free (int *) ;
 int os_snprintf (char*,int,char*,char*,char*,char*) ;
 scalar_t__ os_strcmp (scalar_t__,char*) ;
 void* os_strdup (scalar_t__) ;
 int tls_connection_verify_peer ;
 int wpa_printf (int ,char*,...) ;

int tls_connection_set_params(void *tls_ctx, struct tls_connection *conn,
         const struct tls_connection_params *params)
{
 int ret;
 const char *err;
 char prio_buf[100];
 const char *prio = ((void*)0);

 if (conn == ((void*)0) || params == ((void*)0))
  return -1;

 if (params->flags & TLS_CONN_REQUIRE_OCSP_ALL) {
  wpa_printf(MSG_INFO,
      "GnuTLS: ocsp=3 not supported");
  return -1;
 }

 if (params->flags & TLS_CONN_EXT_CERT_CHECK) {
  wpa_printf(MSG_INFO,
      "GnuTLS: tls_ext_cert_check=1 not supported");
  return -1;
 }

 if (params->subject_match) {
  wpa_printf(MSG_INFO, "GnuTLS: subject_match not supported");
  return -1;
 }

 if (params->altsubject_match) {
  wpa_printf(MSG_INFO, "GnuTLS: altsubject_match not supported");
  return -1;
 }

 os_free(conn->suffix_match);
 conn->suffix_match = ((void*)0);
 if (params->suffix_match) {
  conn->suffix_match = os_strdup(params->suffix_match);
  if (conn->suffix_match == ((void*)0))
   return -1;
 }
 if (params->domain_match) {
  wpa_printf(MSG_INFO, "GnuTLS: domain_match not supported");
  return -1;
 }


 conn->flags = params->flags;

 if (params->flags & (TLS_CONN_DISABLE_TLSv1_0 |
        TLS_CONN_DISABLE_TLSv1_1 |
        TLS_CONN_DISABLE_TLSv1_2)) {
  os_snprintf(prio_buf, sizeof(prio_buf),
       "NORMAL:-VERS-SSL3.0%s%s%s",
       params->flags & TLS_CONN_DISABLE_TLSv1_0 ?
       ":-VERS-TLS1.0" : "",
       params->flags & TLS_CONN_DISABLE_TLSv1_1 ?
       ":-VERS-TLS1.1" : "",
       params->flags & TLS_CONN_DISABLE_TLSv1_2 ?
       ":-VERS-TLS1.2" : "");
  prio = prio_buf;
 }

 if (params->openssl_ciphers) {
  if (os_strcmp(params->openssl_ciphers, "SUITEB128") == 0) {
   prio = "SUITEB128";
  } else if (os_strcmp(params->openssl_ciphers,
         "SUITEB192") == 0) {
   prio = "SUITEB192";
  } else if ((params->flags & TLS_CONN_SUITEB) &&
      os_strcmp(params->openssl_ciphers,
         "ECDHE-RSA-AES256-GCM-SHA384") == 0) {
   prio = "NONE:+VERS-TLS1.2:+AEAD:+ECDHE-RSA:+AES-256-GCM:+SIGN-RSA-SHA384:+CURVE-SECP384R1:+COMP-NULL";
  } else if (os_strcmp(params->openssl_ciphers,
         "ECDHE-RSA-AES256-GCM-SHA384") == 0) {
   prio = "NONE:+VERS-TLS1.2:+AEAD:+ECDHE-RSA:+AES-256-GCM:+SIGN-RSA-SHA384:+CURVE-SECP384R1:+COMP-NULL";
  } else if (os_strcmp(params->openssl_ciphers,
         "DHE-RSA-AES256-GCM-SHA384") == 0) {
   prio = "NONE:+VERS-TLS1.2:+AEAD:+DHE-RSA:+AES-256-GCM:+SIGN-RSA-SHA384:+CURVE-SECP384R1:+COMP-NULL:%PROFILE_HIGH";
  } else if (os_strcmp(params->openssl_ciphers,
         "ECDHE-ECDSA-AES256-GCM-SHA384") == 0) {
   prio = "NONE:+VERS-TLS1.2:+AEAD:+ECDHE-ECDSA:+AES-256-GCM:+SIGN-RSA-SHA384:+CURVE-SECP384R1:+COMP-NULL";
  } else {
   wpa_printf(MSG_INFO,
       "GnuTLS: openssl_ciphers not supported");
   return -1;
  }
 } else if (params->flags & TLS_CONN_SUITEB) {
  prio = "NONE:+VERS-TLS1.2:+AEAD:+ECDHE-ECDSA:+ECDHE-RSA:+DHE-RSA:+AES-256-GCM:+SIGN-RSA-SHA384:+CURVE-SECP384R1:+COMP-NULL:%PROFILE_HIGH";
 }

 if (prio) {
  wpa_printf(MSG_DEBUG, "GnuTLS: Set priority string: %s", prio);
  ret = gnutls_priority_set_direct(conn->session, prio, &err);
  if (ret < 0) {
   wpa_printf(MSG_ERROR,
       "GnuTLS: Priority string failure at '%s'",
       err);
   return -1;
  }
 }

 if (params->openssl_ecdh_curves) {
  wpa_printf(MSG_INFO,
      "GnuTLS: openssl_ecdh_curves not supported");
  return -1;
 }




 if (params->ca_cert) {
  wpa_printf(MSG_DEBUG, "GnuTLS: Try to parse %s in DER format",
      params->ca_cert);
  ret = gnutls_certificate_set_x509_trust_file(
   conn->xcred, params->ca_cert, GNUTLS_X509_FMT_DER);
  if (ret < 0) {
   wpa_printf(MSG_DEBUG,
       "GnuTLS: Failed to read CA cert '%s' in DER format (%s) - try in PEM format",
       params->ca_cert,
       gnutls_strerror(ret));
   ret = gnutls_certificate_set_x509_trust_file(
    conn->xcred, params->ca_cert,
    GNUTLS_X509_FMT_PEM);
   if (ret < 0) {
    wpa_printf(MSG_DEBUG,
        "Failed to read CA cert '%s' in PEM format: %s",
        params->ca_cert,
        gnutls_strerror(ret));
    return -1;
   }
   wpa_printf(MSG_DEBUG,
       "GnuTLS: Successfully read CA cert '%s' in PEM format",
       params->ca_cert);
  } else {
   wpa_printf(MSG_DEBUG,
       "GnuTLS: Successfully read CA cert '%s' in DER format",
       params->ca_cert);
  }
 } else if (params->ca_cert_blob) {
  gnutls_datum_t ca;

  ca.data = (unsigned char *) params->ca_cert_blob;
  ca.size = params->ca_cert_blob_len;

  ret = gnutls_certificate_set_x509_trust_mem(
   conn->xcred, &ca, GNUTLS_X509_FMT_DER);
  if (ret < 0) {
   wpa_printf(MSG_DEBUG,
       "Failed to parse CA cert in DER format: %s",
       gnutls_strerror(ret));
   ret = gnutls_certificate_set_x509_trust_mem(
    conn->xcred, &ca, GNUTLS_X509_FMT_PEM);
   if (ret < 0) {
    wpa_printf(MSG_DEBUG,
        "Failed to parse CA cert in PEM format: %s",
        gnutls_strerror(ret));
    return -1;
   }
  }
 } else if (params->ca_path) {
  wpa_printf(MSG_INFO, "GnuTLS: ca_path not supported");
  return -1;
 }

 conn->disable_time_checks = 0;
 if (params->ca_cert || params->ca_cert_blob) {
  conn->verify_peer = 1;
  gnutls_certificate_set_verify_function(
   conn->xcred, tls_connection_verify_peer);

  if (params->flags & TLS_CONN_ALLOW_SIGN_RSA_MD5) {
   gnutls_certificate_set_verify_flags(
    conn->xcred, GNUTLS_VERIFY_ALLOW_SIGN_RSA_MD5);
  }

  if (params->flags & TLS_CONN_DISABLE_TIME_CHECKS) {
   conn->disable_time_checks = 1;
   gnutls_certificate_set_verify_flags(
    conn->xcred,
    GNUTLS_VERIFY_DISABLE_TIME_CHECKS);
  }
 }

 if (params->client_cert && params->private_key) {
  wpa_printf(MSG_DEBUG,
      "GnuTLS: Try to parse client cert '%s' and key '%s' in DER format",
      params->client_cert, params->private_key);






  ret = gnutls_certificate_set_x509_key_file(
   conn->xcred, params->client_cert, params->private_key,
   GNUTLS_X509_FMT_DER);

  if (ret < 0) {
   wpa_printf(MSG_DEBUG,
       "GnuTLS: Failed to read client cert/key in DER format (%s) - try in PEM format",
       gnutls_strerror(ret));






   ret = gnutls_certificate_set_x509_key_file(
    conn->xcred, params->client_cert,
    params->private_key, GNUTLS_X509_FMT_PEM);

   if (ret < 0) {
    wpa_printf(MSG_DEBUG, "Failed to read client "
        "cert/key in PEM format: %s",
        gnutls_strerror(ret));
    return ret;
   }
   wpa_printf(MSG_DEBUG,
       "GnuTLS: Successfully read client cert/key in PEM format");
  } else {
   wpa_printf(MSG_DEBUG,
       "GnuTLS: Successfully read client cert/key in DER format");
  }
 } else if (params->private_key) {
  int pkcs12_ok = 0;
  if (!pkcs12_ok) {
   wpa_printf(MSG_DEBUG, "GnuTLS: PKCS#12 support not "
       "included");
   return -1;
  }
 } else if (params->client_cert_blob && params->private_key_blob) {
  gnutls_datum_t cert, key;

  cert.data = (unsigned char *) params->client_cert_blob;
  cert.size = params->client_cert_blob_len;
  key.data = (unsigned char *) params->private_key_blob;
  key.size = params->private_key_blob_len;







  ret = gnutls_certificate_set_x509_key_mem(
   conn->xcred, &cert, &key, GNUTLS_X509_FMT_DER);

  if (ret < 0) {
   wpa_printf(MSG_DEBUG, "Failed to read client cert/key "
       "in DER format: %s", gnutls_strerror(ret));






   ret = gnutls_certificate_set_x509_key_mem(
    conn->xcred, &cert, &key, GNUTLS_X509_FMT_PEM);

   if (ret < 0) {
    wpa_printf(MSG_DEBUG, "Failed to read client "
        "cert/key in PEM format: %s",
        gnutls_strerror(ret));
    return ret;
   }
  }
 } else if (params->private_key_blob) {
  wpa_printf(MSG_DEBUG, "GnuTLS: PKCS#12 support not included");
  return -1;

 }
 if (params->flags & TLS_CONN_REQUIRE_OCSP) {
  wpa_printf(MSG_INFO,
      "GnuTLS: OCSP not supported by this version of GnuTLS");
  return -1;
 }


 conn->params_set = 1;

 ret = gnutls_credentials_set(conn->session, GNUTLS_CRD_CERTIFICATE,
         conn->xcred);
 if (ret < 0) {
  wpa_printf(MSG_INFO, "Failed to configure credentials: %s",
      gnutls_strerror(ret));
 }

 return ret;
}
