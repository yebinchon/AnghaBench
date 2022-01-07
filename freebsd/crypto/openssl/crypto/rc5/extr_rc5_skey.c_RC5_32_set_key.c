
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rounds; int* data; } ;
typedef TYPE_1__ RC5_32_KEY ;
typedef int RC5_32_INT ;


 int RC5_12_ROUNDS ;
 int RC5_16_ROUNDS ;
 int RC5_32_MASK ;
 int RC5_32_P ;
 int RC5_32_Q ;
 int RC5_8_ROUNDS ;
 int ROTATE_l32 (int,int) ;
 int c2l (unsigned char const*,int) ;
 int c2ln (unsigned char const*,int,int,int) ;

void RC5_32_set_key(RC5_32_KEY *key, int len, const unsigned char *data,
                    int rounds)
{
    RC5_32_INT L[64], l, ll, A, B, *S, k;
    int i, j, m, c, t, ii, jj;

    if ((rounds != RC5_16_ROUNDS) &&
        (rounds != RC5_12_ROUNDS) && (rounds != RC5_8_ROUNDS))
        rounds = RC5_16_ROUNDS;

    key->rounds = rounds;
    S = &(key->data[0]);
    j = 0;
    for (i = 0; i <= (len - 8); i += 8) {
        c2l(data, l);
        L[j++] = l;
        c2l(data, l);
        L[j++] = l;
    }
    ii = len - i;
    if (ii) {
        k = len & 0x07;
        c2ln(data, l, ll, k);
        L[j + 0] = l;
        L[j + 1] = ll;
    }

    c = (len + 3) / 4;
    t = (rounds + 1) * 2;
    S[0] = RC5_32_P;
    for (i = 1; i < t; i++)
        S[i] = (S[i - 1] + RC5_32_Q) & RC5_32_MASK;

    j = (t > c) ? t : c;
    j *= 3;
    ii = jj = 0;
    A = B = 0;
    for (i = 0; i < j; i++) {
        k = (S[ii] + A + B) & RC5_32_MASK;
        A = S[ii] = ROTATE_l32(k, 3);
        m = (int)(A + B);
        k = (L[jj] + A + B) & RC5_32_MASK;
        B = L[jj] = ROTATE_l32(k, m);
        if (++ii >= t)
            ii = 0;
        if (++jj >= c)
            jj = 0;
    }
}
