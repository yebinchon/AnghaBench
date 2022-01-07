
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serial_num ;
typedef int buf ;
typedef int X509 ;
typedef int EVP_PKEY ;
typedef int ASN1_INTEGER ;


 int ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 int EVP_PKEY_free (int *) ;
 int MSG_DEBUG ;
 int X509_NAME_oneline (int ,char*,int) ;
 int * X509_get_pubkey (int *) ;
 int * X509_get_serialNumber (int *) ;
 int X509_get_subject_name (int *) ;
 int openssl_pkey_type_str (int *) ;
 int wpa_printf (int ,char*,int,char*,int ,char*) ;
 int wpa_snprintf_hex_uppercase (char*,int,int ,int ) ;

__attribute__((used)) static void openssl_debug_dump_certificate(int i, X509 *cert)
{
 char buf[256];
 EVP_PKEY *pkey;
 ASN1_INTEGER *ser;
 char serial_num[128];

 X509_NAME_oneline(X509_get_subject_name(cert), buf, sizeof(buf));

 ser = X509_get_serialNumber(cert);
 if (ser)
  wpa_snprintf_hex_uppercase(serial_num, sizeof(serial_num),
        ASN1_STRING_get0_data(ser),
        ASN1_STRING_length(ser));
 else
  serial_num[0] = '\0';

 pkey = X509_get_pubkey(cert);
 wpa_printf(MSG_DEBUG, "%d: %s (%s) %s", i, buf,
     openssl_pkey_type_str(pkey), serial_num);
 EVP_PKEY_free(pkey);
}
