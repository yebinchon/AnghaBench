
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;


 int _hx509_ks_register (int ,int *) ;
 int keyset_derfile ;
 int keyset_file ;
 int keyset_pemfile ;

void
_hx509_ks_file_register(hx509_context context)
{
    _hx509_ks_register(context, &keyset_file);
    _hx509_ks_register(context, &keyset_pemfile);
    _hx509_ks_register(context, &keyset_derfile);
}
