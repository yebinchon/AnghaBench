
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key_bits; } ;
typedef int EVP_CIPHER_CTX ;


 int EVP_CIPHER_CTX_key_length (int *) ;




 int NID_hmacWithMD5 ;
 TYPE_1__* data (int *) ;

__attribute__((used)) static int rc2_ctrl(EVP_CIPHER_CTX *c, int type, int arg, void *ptr)
{
    switch (type) {
    case 130:
        data(c)->key_bits = EVP_CIPHER_CTX_key_length(c) * 8;
        return 1;

    case 131:
        *(int *)ptr = data(c)->key_bits;
        return 1;

    case 128:
        if (arg > 0) {
            data(c)->key_bits = arg;
            return 1;
        }
        return 0;






    default:
        return -1;
    }
}
