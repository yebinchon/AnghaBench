
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bio_bio_st {int size; } ;
struct TYPE_3__ {struct bio_bio_st* ptr; } ;
typedef TYPE_1__ BIO ;


 struct bio_bio_st* OPENSSL_zalloc (int) ;

__attribute__((used)) static int bio_new(BIO *bio)
{
    struct bio_bio_st *b = OPENSSL_zalloc(sizeof(*b));

    if (b == ((void*)0))
        return 0;


    b->size = 17 * 1024;

    bio->ptr = b;
    return 1;
}
