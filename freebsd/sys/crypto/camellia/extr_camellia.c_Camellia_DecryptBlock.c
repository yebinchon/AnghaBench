
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int GETU32 (unsigned char const*) ;
 int PUTU32 (unsigned char*,int ) ;
 int camellia_decrypt128 (int const*,int *) ;
 int camellia_decrypt256 (int const*,int *) ;

void
Camellia_DecryptBlock(const int keyBitLength,
        const unsigned char *ciphertext,
        const uint32_t *subkey,
        unsigned char *plaintext)
{
    uint32_t tmp[4];

    tmp[0] = GETU32(ciphertext);
    tmp[1] = GETU32(ciphertext + 4);
    tmp[2] = GETU32(ciphertext + 8);
    tmp[3] = GETU32(ciphertext + 12);

    switch (keyBitLength) {
    case 128:
 camellia_decrypt128(subkey, tmp);
 break;
    case 192:

    case 256:
 camellia_decrypt256(subkey, tmp);
 break;
    default:
 break;
    }

    PUTU32(plaintext, tmp[0]);
    PUTU32(plaintext+4, tmp[1]);
    PUTU32(plaintext+8, tmp[2]);
    PUTU32(plaintext+12, tmp[3]);
}
