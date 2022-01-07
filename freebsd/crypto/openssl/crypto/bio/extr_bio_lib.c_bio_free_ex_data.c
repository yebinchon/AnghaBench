
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ex_data; } ;
typedef TYPE_1__ BIO ;


 int CRYPTO_EX_INDEX_BIO ;
 int CRYPTO_free_ex_data (int ,TYPE_1__*,int *) ;

void bio_free_ex_data(BIO *bio)
{
    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_BIO, bio, &bio->ex_data);
}
