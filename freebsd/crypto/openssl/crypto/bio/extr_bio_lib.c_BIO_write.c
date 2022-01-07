
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int bio_write_intern (int *,void const*,size_t,size_t*) ;

int BIO_write(BIO *b, const void *data, int dlen)
{
    size_t written;
    int ret;

    if (dlen < 0)
        return 0;

    ret = bio_write_intern(b, data, (size_t)dlen, &written);

    if (ret > 0) {

        ret = (int)written;
    }

    return ret;
}
