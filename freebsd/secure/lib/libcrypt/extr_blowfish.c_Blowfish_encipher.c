
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_3__ {int** S; int* P; } ;
typedef TYPE_1__ blf_ctx ;


 int BLFRND (int*,int*,int,int,int) ;

__attribute__((used)) static void
Blowfish_encipher(blf_ctx *c, u_int32_t *xl, u_int32_t *xr)
{
 u_int32_t Xl;
 u_int32_t Xr;
 u_int32_t *s = c->S[0];
 u_int32_t *p = c->P;

 Xl = *xl;
 Xr = *xr;

 Xl ^= p[0];
 BLFRND(s, p, Xr, Xl, 1); BLFRND(s, p, Xl, Xr, 2);
 BLFRND(s, p, Xr, Xl, 3); BLFRND(s, p, Xl, Xr, 4);
 BLFRND(s, p, Xr, Xl, 5); BLFRND(s, p, Xl, Xr, 6);
 BLFRND(s, p, Xr, Xl, 7); BLFRND(s, p, Xl, Xr, 8);
 BLFRND(s, p, Xr, Xl, 9); BLFRND(s, p, Xl, Xr, 10);
 BLFRND(s, p, Xr, Xl, 11); BLFRND(s, p, Xl, Xr, 12);
 BLFRND(s, p, Xr, Xl, 13); BLFRND(s, p, Xl, Xr, 14);
 BLFRND(s, p, Xr, Xl, 15); BLFRND(s, p, Xl, Xr, 16);

 *xl = Xr ^ p[17];
 *xr = Xl;
}
