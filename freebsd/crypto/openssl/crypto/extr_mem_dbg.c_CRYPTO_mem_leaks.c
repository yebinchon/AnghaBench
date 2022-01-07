
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int CRYPTO_mem_leaks_cb (int ,int *) ;
 int bio_free_ex_data (int *) ;
 int print_bio ;

int CRYPTO_mem_leaks(BIO *b)
{




    bio_free_ex_data(b);

    return CRYPTO_mem_leaks_cb(print_bio, b);
}
