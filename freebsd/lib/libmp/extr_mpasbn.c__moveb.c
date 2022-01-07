
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bn; } ;
typedef TYPE_1__ MINT ;
typedef int BIGNUM ;


 int BN_ERRCHECK (char const*,int ) ;
 int BN_copy (int ,int const*) ;

__attribute__((used)) static void
_moveb(const char *msg, const BIGNUM *sbp, MINT *tmp)
{

 BN_ERRCHECK(msg, BN_copy(tmp->bn, sbp));
}
