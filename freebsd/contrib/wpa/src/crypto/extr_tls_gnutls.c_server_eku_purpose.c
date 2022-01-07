
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oid ;
typedef int gnutls_x509_crt_t ;


 int GNUTLS_E_REQUESTED_DATA_NOT_AVAILABLE ;
 int GNUTLS_KP_ANY ;
 int GNUTLS_KP_TLS_WWW_SERVER ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int gnutls_x509_crt_get_key_purpose_oid (int ,unsigned int,char*,size_t*,int *) ;
 scalar_t__ os_strcmp (char*,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int server_eku_purpose(gnutls_x509_crt_t cert)
{
 unsigned int i;

 for (i = 0; ; i++) {
  char oid[128];
  size_t oid_size = sizeof(oid);
  int res;

  res = gnutls_x509_crt_get_key_purpose_oid(cert, i, oid,
         &oid_size, ((void*)0));
  if (res == GNUTLS_E_REQUESTED_DATA_NOT_AVAILABLE) {
   if (i == 0) {

    return 1;
   }
   break;
  }

  if (res < 0) {
   wpa_printf(MSG_INFO, "GnuTLS: Failed to get EKU");
   return 0;
  }

  wpa_printf(MSG_DEBUG, "GnuTLS: Certificate purpose: %s", oid);
  if (os_strcmp(oid, GNUTLS_KP_TLS_WWW_SERVER) == 0 ||
      os_strcmp(oid, GNUTLS_KP_ANY) == 0)
   return 1;
 }

 return 0;
}
