
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int T2d; int Z; int YminusX; int YplusX; } ;
typedef TYPE_1__ ge25519_cached ;


 int fe25519_cmov (int ,int ,unsigned char) ;

__attribute__((used)) static void
ge25519_cmov_cached(ge25519_cached *t, const ge25519_cached *u, unsigned char b)
{
    fe25519_cmov(t->YplusX, u->YplusX, b);
    fe25519_cmov(t->YminusX, u->YminusX, b);
    fe25519_cmov(t->Z, u->Z, b);
    fe25519_cmov(t->T2d, u->T2d, b);
}
