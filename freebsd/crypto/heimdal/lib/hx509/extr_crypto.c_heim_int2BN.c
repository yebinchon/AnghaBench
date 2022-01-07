
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int negative; int length; int data; } ;
typedef TYPE_1__ heim_integer ;
typedef int BIGNUM ;


 int * BN_bin2bn (int ,int ,int *) ;
 int BN_set_negative (int *,int ) ;

__attribute__((used)) static BIGNUM *
heim_int2BN(const heim_integer *i)
{
    BIGNUM *bn;

    bn = BN_bin2bn(i->data, i->length, ((void*)0));
    if (bn != ((void*)0))
     BN_set_negative(bn, i->negative);
    return bn;
}
