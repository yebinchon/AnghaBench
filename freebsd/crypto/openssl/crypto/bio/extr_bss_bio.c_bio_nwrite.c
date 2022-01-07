
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bio_bio_st {scalar_t__ len; scalar_t__ size; } ;
typedef size_t ossl_ssize_t ;
struct TYPE_4__ {struct bio_bio_st* ptr; } ;
typedef TYPE_1__ BIO ;


 size_t OSSL_SSIZE_MAX ;
 int assert (int) ;
 size_t bio_nwrite0 (TYPE_1__*,char**) ;

__attribute__((used)) static ossl_ssize_t bio_nwrite(BIO *bio, char **buf, size_t num_)
{
    struct bio_bio_st *b;
    ossl_ssize_t num, space;

    if (num_ > OSSL_SSIZE_MAX)
        num = OSSL_SSIZE_MAX;
    else
        num = (ossl_ssize_t) num_;

    space = bio_nwrite0(bio, buf);
    if (num > space)
        num = space;
    if (num <= 0)
        return num;
    b = bio->ptr;
    assert(b != ((void*)0));
    b->len += num;
    assert(b->len <= b->size);

    return num;
}
