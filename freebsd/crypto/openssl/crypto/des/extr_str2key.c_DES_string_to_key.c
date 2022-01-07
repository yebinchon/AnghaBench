
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ks ;
typedef int DES_key_schedule ;
typedef unsigned char* DES_cblock ;


 int DES_cbc_cksum (unsigned char const*,unsigned char**,int,int *,unsigned char**) ;
 int DES_set_key_unchecked (unsigned char**,int *) ;
 int DES_set_odd_parity (unsigned char**) ;
 int OPENSSL_cleanse (int *,int) ;
 int memset (unsigned char**,int ,int) ;
 int strlen (char const*) ;

void DES_string_to_key(const char *str, DES_cblock *key)
{
    DES_key_schedule ks;
    int i, length;

    memset(key, 0, 8);
    length = strlen(str);
    for (i = 0; i < length; i++) {
        register unsigned char j = str[i];

        if ((i % 16) < 8)
            (*key)[i % 8] ^= (j << 1);
        else {

            j = ((j << 4) & 0xf0) | ((j >> 4) & 0x0f);
            j = ((j << 2) & 0xcc) | ((j >> 2) & 0x33);
            j = ((j << 1) & 0xaa) | ((j >> 1) & 0x55);
            (*key)[7 - (i % 8)] ^= j;
        }
    }
    DES_set_odd_parity(key);
    DES_set_key_unchecked(key, &ks);
    DES_cbc_cksum((const unsigned char *)str, key, length, &ks, key);
    OPENSSL_cleanse(&ks, sizeof(ks));
    DES_set_odd_parity(key);
}
