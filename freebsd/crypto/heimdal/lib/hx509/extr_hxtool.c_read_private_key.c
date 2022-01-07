
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * hx509_private_key ;
typedef int hx509_certs ;


 int _hx509_certs_keys_free (int ,int **) ;
 int _hx509_certs_keys_get (int ,int ,int ***) ;
 int * _hx509_private_key_ref (int *) ;
 int context ;
 int errx (int,char*,char const*) ;
 int hx509_certs_free (int *) ;
 int hx509_certs_init (int ,char const*,int ,int *,int *) ;
 int hx509_err (int ,int,int,char*,...) ;

__attribute__((used)) static int
read_private_key(const char *fn, hx509_private_key *key)
{
    hx509_private_key *keys;
    hx509_certs certs;
    int ret;

    *key = ((void*)0);

    ret = hx509_certs_init(context, fn, 0, ((void*)0), &certs);
    if (ret)
 hx509_err(context, 1, ret, "hx509_certs_init: %s", fn);

    ret = _hx509_certs_keys_get(context, certs, &keys);
    hx509_certs_free(&certs);
    if (ret)
 hx509_err(context, 1, ret, "hx509_certs_keys_get");
    if (keys[0] == ((void*)0))
 errx(1, "no keys in key store: %s", fn);

    *key = _hx509_private_key_ref(keys[0]);
    _hx509_certs_keys_free(context, keys);

    return 0;
}
