
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct tls_connection {int flags; } ;
typedef int gnutls_session_t ;
typedef int gnutls_ocsp_resp_t ;
struct TYPE_5__ {int data; } ;
typedef TYPE_1__ gnutls_datum_t ;
typedef int gnutls_alert_description_t ;


 int GNUTLS_A_CERTIFICATE_REVOKED ;
 int GNUTLS_E_SUCCESS ;
 unsigned int GNUTLS_OCSP_CERT_GOOD ;
 unsigned int GNUTLS_OCSP_CERT_REVOKED ;
 int GNUTLS_OCSP_PRINT_FULL ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int TLS_CONN_REQUEST_OCSP ;
 int TLS_CONN_REQUIRE_OCSP ;
 int TLS_FAIL_REVOKED ;
 int gnutls_free (int ) ;
 int gnutls_ocsp_resp_deinit (int ) ;
 int gnutls_ocsp_resp_get_single (int ,int ,int *,int *,int *,int *,unsigned int*,int *,int *,int *,int *) ;
 int gnutls_ocsp_resp_import (int ,TYPE_1__*) ;
 int gnutls_ocsp_resp_init (int *) ;
 int gnutls_ocsp_resp_print (int ,int ,TYPE_1__*) ;
 int gnutls_ocsp_status_request_get (int ,TYPE_1__*) ;
 int gnutls_ocsp_status_request_is_checked (int ,int ) ;
 int gnutls_strerror (int) ;
 int gnutls_tls_fail_event (struct tls_connection*,int *,int ,int *,char*,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int check_ocsp(struct tls_connection *conn, gnutls_session_t session,
        gnutls_alert_description_t *err)
{
 return 0;

}
