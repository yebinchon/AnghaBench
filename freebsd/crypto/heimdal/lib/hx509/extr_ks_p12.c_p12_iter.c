
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_pkcs12 {int certs; } ;
typedef int hx509_context ;
typedef int hx509_certs ;
typedef int hx509_cert ;


 int hx509_certs_next_cert (int ,int ,void*,int *) ;

__attribute__((used)) static int
p12_iter(hx509_context context,
  hx509_certs certs,
  void *data,
  void *cursor,
  hx509_cert *cert)
{
    struct ks_pkcs12 *p12 = data;
    return hx509_certs_next_cert(context, p12->certs, cursor, cert);
}
