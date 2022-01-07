
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int Y; int X; int T; int Z; } ;
typedef TYPE_1__ ge_p3 ;
typedef int fe ;


 int d ;
 int fe_1 (int ) ;
 int fe_add (int ,int ,int ) ;
 int fe_frombytes (int ,int const*) ;
 int const fe_isnegative (int ) ;
 scalar_t__ fe_isnonzero (int ) ;
 int fe_mul (int ,int ,int ) ;
 int fe_neg (int ,int ) ;
 int fe_pow22523 (int ,int ) ;
 int fe_sq (int ,int ) ;
 int fe_sub (int ,int ,int ) ;
 int sqrtm1 ;

__attribute__((used)) static int ge_frombytes_vartime(ge_p3 *h, const uint8_t *s)
{
    fe u;
    fe v;
    fe v3;
    fe vxx;
    fe check;

    fe_frombytes(h->Y, s);
    fe_1(h->Z);
    fe_sq(u, h->Y);
    fe_mul(v, u, d);
    fe_sub(u, u, h->Z);
    fe_add(v, v, h->Z);

    fe_sq(v3, v);
    fe_mul(v3, v3, v);
    fe_sq(h->X, v3);
    fe_mul(h->X, h->X, v);
    fe_mul(h->X, h->X, u);

    fe_pow22523(h->X, h->X);
    fe_mul(h->X, h->X, v3);
    fe_mul(h->X, h->X, u);

    fe_sq(vxx, h->X);
    fe_mul(vxx, vxx, v);
    fe_sub(check, vxx, u);
    if (fe_isnonzero(check)) {
        fe_add(check, vxx, u);
        if (fe_isnonzero(check)) {
            return -1;
        }
        fe_mul(h->X, h->X, sqrtm1);
    }

    if (fe_isnegative(h->X) != (s[31] >> 7)) {
        fe_neg(h->X, h->X);
    }

    fe_mul(h->T, h->X, h->Y);
    return 0;
}
