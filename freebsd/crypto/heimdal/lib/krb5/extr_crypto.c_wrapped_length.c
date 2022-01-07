
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _krb5_encryption_type {size_t padsize; size_t confoundersize; int checksum; } ;
typedef TYPE_1__* krb5_crypto ;
typedef int krb5_context ;
struct TYPE_3__ {struct _krb5_encryption_type* et; } ;


 size_t CHECKSUMSIZE (int ) ;

__attribute__((used)) static size_t
wrapped_length (krb5_context context,
  krb5_crypto crypto,
  size_t data_len)
{
    struct _krb5_encryption_type *et = crypto->et;
    size_t padsize = et->padsize;
    size_t checksumsize = CHECKSUMSIZE(et->checksum);
    size_t res;

    res = et->confoundersize + checksumsize + data_len;
    res = (res + padsize - 1) / padsize * padsize;
    return res;
}
