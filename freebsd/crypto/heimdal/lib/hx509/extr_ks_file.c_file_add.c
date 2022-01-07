
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_file {int certs; } ;
typedef int hx509_context ;
typedef int hx509_certs ;
typedef int hx509_cert ;


 int hx509_certs_add (int ,int ,int ) ;

__attribute__((used)) static int
file_add(hx509_context context, hx509_certs certs, void *data, hx509_cert c)
{
    struct ks_file *ksf = data;
    return hx509_certs_add(context, ksf->certs, c);
}
