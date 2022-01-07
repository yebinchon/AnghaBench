
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ hx509_private_key ;
typedef int hx509_context ;


 int free (scalar_t__*) ;
 int hx509_private_key_free (scalar_t__*) ;

void
_hx509_certs_keys_free(hx509_context context,
         hx509_private_key *keys)
{
    int i;
    for (i = 0; keys[i]; i++)
 hx509_private_key_free(&keys[i]);
    free(keys);
}
