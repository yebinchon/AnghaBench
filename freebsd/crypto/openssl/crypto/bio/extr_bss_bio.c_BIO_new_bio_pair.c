
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_free (int *) ;
 long BIO_make_bio_pair (int *,int *) ;
 int * BIO_new (int ) ;
 int BIO_s_bio () ;
 long BIO_set_write_buf_size (int *,size_t) ;

int BIO_new_bio_pair(BIO **bio1_p, size_t writebuf1,
                     BIO **bio2_p, size_t writebuf2)
{
    BIO *bio1 = ((void*)0), *bio2 = ((void*)0);
    long r;
    int ret = 0;

    bio1 = BIO_new(BIO_s_bio());
    if (bio1 == ((void*)0))
        goto err;
    bio2 = BIO_new(BIO_s_bio());
    if (bio2 == ((void*)0))
        goto err;

    if (writebuf1) {
        r = BIO_set_write_buf_size(bio1, writebuf1);
        if (!r)
            goto err;
    }
    if (writebuf2) {
        r = BIO_set_write_buf_size(bio2, writebuf2);
        if (!r)
            goto err;
    }

    r = BIO_make_bio_pair(bio1, bio2);
    if (!r)
        goto err;
    ret = 1;

 err:
    if (ret == 0) {
        BIO_free(bio1);
        bio1 = ((void*)0);
        BIO_free(bio2);
        bio2 = ((void*)0);
    }

    *bio1_p = bio1;
    *bio2_p = bio2;
    return ret;
}
