
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_LOOKUP_METHOD ;


 int x509_dir_lookup ;

X509_LOOKUP_METHOD *X509_LOOKUP_hash_dir(void)
{
    return &x509_dir_lookup;
}
