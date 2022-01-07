
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;


 int _hx509_ks_register (int ,int *) ;
 int keyset_mem ;

void
_hx509_ks_mem_register(hx509_context context)
{
    _hx509_ks_register(context, &keyset_mem);
}
