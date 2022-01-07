
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 size_t get_cipher_data_index (int) ;
 int const** known_cipher_methods ;

__attribute__((used)) static const EVP_CIPHER *get_cipher_method(int nid)
{
    size_t i = get_cipher_data_index(nid);

    if (i == (size_t)-1)
        return ((void*)0);
    return known_cipher_methods[i];
}
