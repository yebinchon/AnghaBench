
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;
typedef int hx509_certs ;
typedef int * hx509_cert ;


 int ENOENT ;

__attribute__((used)) static int
null_iter(hx509_context context,
   hx509_certs certs, void *data, void *iter, hx509_cert *cert)
{
    *cert = ((void*)0);
    return ENOENT;
}
