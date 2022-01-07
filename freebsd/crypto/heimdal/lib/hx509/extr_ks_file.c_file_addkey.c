
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_file {int certs; } ;
typedef int hx509_private_key ;
typedef int hx509_context ;
typedef int hx509_certs ;


 int _hx509_certs_keys_add (int ,int ,int ) ;

__attribute__((used)) static int
file_addkey(hx509_context context,
      hx509_certs certs,
      void *data,
      hx509_private_key key)
{
    struct ks_file *ksf = data;
    return _hx509_certs_keys_add(context, ksf->certs, key);
}
