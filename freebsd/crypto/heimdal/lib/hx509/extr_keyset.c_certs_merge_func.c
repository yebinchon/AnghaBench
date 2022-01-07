
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;
typedef int hx509_certs ;
typedef int hx509_cert ;


 int hx509_certs_add (int ,int ,int ) ;

__attribute__((used)) static int
certs_merge_func(hx509_context context, void *ctx, hx509_cert c)
{
    return hx509_certs_add(context, (hx509_certs)ctx, c);
}
