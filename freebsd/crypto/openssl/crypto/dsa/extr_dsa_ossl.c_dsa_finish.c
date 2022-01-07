
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int method_mont_p; } ;
typedef TYPE_1__ DSA ;


 int BN_MONT_CTX_free (int ) ;

__attribute__((used)) static int dsa_finish(DSA *dsa)
{
    BN_MONT_CTX_free(dsa->method_mont_p);
    return 1;
}
