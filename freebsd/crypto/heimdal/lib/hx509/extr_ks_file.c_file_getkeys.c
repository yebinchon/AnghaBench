
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_file {int certs; } ;
typedef int hx509_private_key ;
typedef int hx509_context ;
typedef int hx509_certs ;


 int _hx509_certs_keys_get (int ,int ,int **) ;

__attribute__((used)) static int
file_getkeys(hx509_context context,
      hx509_certs certs,
      void *data,
      hx509_private_key **keys)
{
    struct ks_file *ksf = data;
    return _hx509_certs_keys_get(context, ksf->certs, keys);
}
