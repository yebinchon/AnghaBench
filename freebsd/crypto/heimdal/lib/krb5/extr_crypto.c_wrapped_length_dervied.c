
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _krb5_encryption_type {size_t padsize; size_t confoundersize; TYPE_1__* checksum; TYPE_2__* keyed_checksum; } ;
typedef TYPE_3__* krb5_crypto ;
typedef int krb5_context ;
struct TYPE_7__ {struct _krb5_encryption_type* et; } ;
struct TYPE_6__ {scalar_t__ checksumsize; } ;
struct TYPE_5__ {scalar_t__ checksumsize; } ;



__attribute__((used)) static size_t
wrapped_length_dervied (krb5_context context,
   krb5_crypto crypto,
   size_t data_len)
{
    struct _krb5_encryption_type *et = crypto->et;
    size_t padsize = et->padsize;
    size_t res;

    res = et->confoundersize + data_len;
    res = (res + padsize - 1) / padsize * padsize;
    if (et->keyed_checksum)
 res += et->keyed_checksum->checksumsize;
    else
 res += et->checksum->checksumsize;
    return res;
}
