
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x509_certificate {int issuer; scalar_t__ cert_len; } ;
struct tlsv1_client {TYPE_1__* cred; } ;
struct TYPE_2__ {int trusted_certs; struct x509_certificate* cert; } ;


 struct x509_certificate* x509_certificate_get_subject (int ,int *) ;
 scalar_t__ x509_certificate_self_signed (struct x509_certificate*) ;

__attribute__((used)) static size_t tls_client_cert_chain_der_len(struct tlsv1_client *conn)
{
 size_t len = 0;
 struct x509_certificate *cert;

 if (conn->cred == ((void*)0))
  return 0;

 cert = conn->cred->cert;
 while (cert) {
  len += 3 + cert->cert_len;
  if (x509_certificate_self_signed(cert))
   break;
  cert = x509_certificate_get_subject(conn->cred->trusted_certs,
          &cert->issuer);
 }

 return len;
}
