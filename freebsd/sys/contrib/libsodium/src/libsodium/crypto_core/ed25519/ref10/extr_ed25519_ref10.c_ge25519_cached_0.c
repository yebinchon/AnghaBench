
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int T2d; int Z; int YminusX; int YplusX; } ;
typedef TYPE_1__ ge25519_cached ;


 int fe25519_0 (int ) ;
 int fe25519_1 (int ) ;

__attribute__((used)) static void
ge25519_cached_0(ge25519_cached *h)
{
    fe25519_1(h->YplusX);
    fe25519_1(h->YminusX);
    fe25519_1(h->Z);
    fe25519_0(h->T2d);
}
