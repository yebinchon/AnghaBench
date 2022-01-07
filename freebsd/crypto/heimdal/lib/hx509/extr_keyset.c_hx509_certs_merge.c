
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;
typedef int * hx509_certs ;


 int certs_merge_func ;
 int hx509_certs_iter_f (int ,int *,int ,int *) ;

int
hx509_certs_merge(hx509_context context, hx509_certs to, hx509_certs from)
{
    if (from == ((void*)0))
 return 0;
    return hx509_certs_iter_f(context, from, certs_merge_func, to);
}
