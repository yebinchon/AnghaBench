
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _krb5_encryption_type {int padsize; scalar_t__ confoundersize; int checksum; } ;
typedef TYPE_1__* krb5_crypto ;
typedef int krb5_context ;
struct TYPE_3__ {struct _krb5_encryption_type* et; } ;


 size_t CHECKSUMSIZE (int ) ;

__attribute__((used)) static size_t
crypto_overhead (krb5_context context,
   krb5_crypto crypto)
{
    struct _krb5_encryption_type *et = crypto->et;
    size_t res;

    res = CHECKSUMSIZE(et->checksum);
    res += et->confoundersize;
    if (et->padsize > 1)
 res += et->padsize;
    return res;
}
