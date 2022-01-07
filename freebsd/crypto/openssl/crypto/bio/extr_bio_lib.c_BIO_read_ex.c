
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int bio_read_intern (int *,void*,size_t,size_t*) ;

int BIO_read_ex(BIO *b, void *data, size_t dlen, size_t *readbytes)
{
    int ret;

    ret = bio_read_intern(b, data, dlen, readbytes);

    if (ret > 0)
        ret = 1;
    else
        ret = 0;

    return ret;
}
