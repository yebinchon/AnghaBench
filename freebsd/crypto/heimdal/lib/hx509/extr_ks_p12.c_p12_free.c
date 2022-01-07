
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_pkcs12 {struct ks_pkcs12* fn; int certs; } ;
typedef int hx509_certs ;


 int free (struct ks_pkcs12*) ;
 int hx509_certs_free (int *) ;

__attribute__((used)) static int
p12_free(hx509_certs certs, void *data)
{
    struct ks_pkcs12 *p12 = data;
    hx509_certs_free(&p12->certs);
    free(p12->fn);
    free(p12);
    return 0;
}
