
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x509_certificate {int extensions_present; scalar_t__ version; int key_usage; int ca; } ;


 int MSG_DEBUG ;
 scalar_t__ X509_CERT_V3 ;
 int X509_EXT_BASIC_CONSTRAINTS ;
 int X509_EXT_KEY_USAGE ;
 int X509_KEY_USAGE_KEY_CERT_SIGN ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int x509_valid_issuer(const struct x509_certificate *cert)
{
 if ((cert->extensions_present & X509_EXT_BASIC_CONSTRAINTS) &&
     !cert->ca) {
  wpa_printf(MSG_DEBUG, "X509: Non-CA certificate used as an "
      "issuer");
  return -1;
 }

 if (cert->version == X509_CERT_V3 &&
     !(cert->extensions_present & X509_EXT_BASIC_CONSTRAINTS)) {
  wpa_printf(MSG_DEBUG, "X509: v3 CA certificate did not "
      "include BasicConstraints extension");
  return -1;
 }

 if ((cert->extensions_present & X509_EXT_KEY_USAGE) &&
     !(cert->key_usage & X509_KEY_USAGE_KEY_CERT_SIGN)) {
  wpa_printf(MSG_DEBUG, "X509: Issuer certificate did not have "
      "keyCertSign bit in Key Usage");
  return -1;
 }

 return 0;
}
