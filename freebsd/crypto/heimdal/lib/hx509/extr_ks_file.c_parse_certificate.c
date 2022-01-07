
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx509_collector {int dummy; } ;
typedef int hx509_pem_header ;
typedef int hx509_context ;
typedef int hx509_cert ;
typedef int AlgorithmIdentifier ;


 int _hx509_collector_certs_add (int ,struct hx509_collector*,int ) ;
 int hx509_cert_free (int ) ;
 int hx509_cert_init_data (int ,void const*,size_t,int *) ;

__attribute__((used)) static int
parse_certificate(hx509_context context, const char *fn,
    struct hx509_collector *c,
    const hx509_pem_header *headers,
    const void *data, size_t len,
    const AlgorithmIdentifier *ai)
{
    hx509_cert cert;
    int ret;

    ret = hx509_cert_init_data(context, data, len, &cert);
    if (ret)
 return ret;

    ret = _hx509_collector_certs_add(context, c, cert);
    hx509_cert_free(cert);
    return ret;
}
