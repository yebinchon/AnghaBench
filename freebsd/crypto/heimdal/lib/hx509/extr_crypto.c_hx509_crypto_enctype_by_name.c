
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx509cipher {int const* oid; } ;
typedef int heim_oid ;


 struct hx509cipher* find_cipher_by_name (char const*) ;

const heim_oid *
hx509_crypto_enctype_by_name(const char *name)
{
    const struct hx509cipher *cipher;

    cipher = find_cipher_by_name(name);
    if (cipher == ((void*)0))
 return ((void*)0);
    return cipher->oid;
}
