
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x509_certificate {int tbs_cert_len; int tbs_cert_start; int sign_value_len; int sign_value; int signature; } ;


 int x509_check_signature (struct x509_certificate*,int *,int ,int ,int ,int ) ;

int x509_certificate_check_signature(struct x509_certificate *issuer,
         struct x509_certificate *cert)
{
 return x509_check_signature(issuer, &cert->signature,
        cert->sign_value, cert->sign_value_len,
        cert->tbs_cert_start, cert->tbs_cert_len);
}
