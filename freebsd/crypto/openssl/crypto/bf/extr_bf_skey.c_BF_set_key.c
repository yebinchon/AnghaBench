
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* P; int* S; } ;
typedef int BF_LONG ;
typedef TYPE_1__ BF_KEY ;


 int BF_ROUNDS ;
 int BF_encrypt (int*,TYPE_1__*) ;
 int bf_init ;
 int memcpy (TYPE_1__*,int *,int) ;

void BF_set_key(BF_KEY *key, int len, const unsigned char *data)
{
    int i;
    BF_LONG *p, ri, in[2];
    const unsigned char *d, *end;

    memcpy(key, &bf_init, sizeof(BF_KEY));
    p = key->P;

    if (len > ((BF_ROUNDS + 2) * 4))
        len = (BF_ROUNDS + 2) * 4;

    d = data;
    end = &(data[len]);
    for (i = 0; i < (BF_ROUNDS + 2); i++) {
        ri = *(d++);
        if (d >= end)
            d = data;

        ri <<= 8;
        ri |= *(d++);
        if (d >= end)
            d = data;

        ri <<= 8;
        ri |= *(d++);
        if (d >= end)
            d = data;

        ri <<= 8;
        ri |= *(d++);
        if (d >= end)
            d = data;

        p[i] ^= ri;
    }

    in[0] = 0L;
    in[1] = 0L;
    for (i = 0; i < (BF_ROUNDS + 2); i += 2) {
        BF_encrypt(in, key);
        p[i] = in[0];
        p[i + 1] = in[1];
    }

    p = key->S;
    for (i = 0; i < 4 * 256; i += 2) {
        BF_encrypt(in, key);
        p[i] = in[0];
        p[i + 1] = in[1];
    }
}
