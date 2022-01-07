
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int H; int G; int F; int E; int D; int C; int B; int A; } ;
typedef TYPE_1__ SM3_CTX ;


 int SM3_A ;
 int SM3_B ;
 int SM3_C ;
 int SM3_D ;
 int SM3_E ;
 int SM3_F ;
 int SM3_G ;
 int SM3_H ;
 int memset (TYPE_1__*,int ,int) ;

int sm3_init(SM3_CTX *c)
{
    memset(c, 0, sizeof(*c));
    c->A = SM3_A;
    c->B = SM3_B;
    c->C = SM3_C;
    c->D = SM3_D;
    c->E = SM3_E;
    c->F = SM3_F;
    c->G = SM3_G;
    c->H = SM3_H;
    return 1;
}
