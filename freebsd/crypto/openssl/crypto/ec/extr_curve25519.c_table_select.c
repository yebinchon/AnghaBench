
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_7__ {int xy2d; int yplusx; int yminusx; } ;
typedef TYPE_1__ ge_precomp ;


 int cmov (TYPE_1__*,TYPE_1__*,char) ;
 char equal (char,int) ;
 int fe_copy (int ,int ) ;
 int fe_neg (int ,int ) ;
 int ge_precomp_0 (TYPE_1__*) ;
 TYPE_1__** k25519Precomp ;
 char negative (char) ;

__attribute__((used)) static void table_select(ge_precomp *t, int pos, signed char b)
{
    ge_precomp minust;
    uint8_t bnegative = negative(b);
    uint8_t babs = b - ((uint8_t)((-bnegative) & b) << 1);

    ge_precomp_0(t);
    cmov(t, &k25519Precomp[pos][0], equal(babs, 1));
    cmov(t, &k25519Precomp[pos][1], equal(babs, 2));
    cmov(t, &k25519Precomp[pos][2], equal(babs, 3));
    cmov(t, &k25519Precomp[pos][3], equal(babs, 4));
    cmov(t, &k25519Precomp[pos][4], equal(babs, 5));
    cmov(t, &k25519Precomp[pos][5], equal(babs, 6));
    cmov(t, &k25519Precomp[pos][6], equal(babs, 7));
    cmov(t, &k25519Precomp[pos][7], equal(babs, 8));
    fe_copy(minust.yplusx, t->yminusx);
    fe_copy(minust.yminusx, t->yplusx);
    fe_neg(minust.xy2d, t->xy2d);
    cmov(t, &minust, bnegative);
}
