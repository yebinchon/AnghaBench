
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int KASSERT (int,char*) ;
 int camellia_setup128 (unsigned char const*,int *) ;
 int camellia_setup192 (unsigned char const*,int *) ;
 int camellia_setup256 (unsigned char const*,int *) ;

void
Camellia_Ekeygen(const int keyBitLength,
   const unsigned char *rawKey,
   uint32_t *subkey)
{
    KASSERT(keyBitLength == 128 || keyBitLength == 192 || keyBitLength == 256,
     ("Invalid key size (%d).", keyBitLength));

    switch(keyBitLength) {
    case 128:
 camellia_setup128(rawKey, subkey);
 break;
    case 192:
 camellia_setup192(rawKey, subkey);
 break;
    case 256:
 camellia_setup256(rawKey, subkey);
 break;
    default:
 break;
    }
}
