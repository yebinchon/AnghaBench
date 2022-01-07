
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int canon_enclen; int canon_enc; scalar_t__ modified; } ;
typedef TYPE_1__ X509_NAME ;


 int i2d_X509_NAME (TYPE_1__*,int *) ;
 int memcmp (int ,int ,scalar_t__) ;

int X509_NAME_cmp(const X509_NAME *a, const X509_NAME *b)
{
    int ret;



    if (!a->canon_enc || a->modified) {
        ret = i2d_X509_NAME((X509_NAME *)a, ((void*)0));
        if (ret < 0)
            return -2;
    }

    if (!b->canon_enc || b->modified) {
        ret = i2d_X509_NAME((X509_NAME *)b, ((void*)0));
        if (ret < 0)
            return -2;
    }

    ret = a->canon_enclen - b->canon_enclen;

    if (ret != 0 || a->canon_enclen == 0)
        return ret;

    return memcmp(a->canon_enc, b->canon_enc, a->canon_enclen);

}
