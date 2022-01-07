
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME ;


 int OPENSSL_free (unsigned char*) ;
 int i2d_X509_NAME (int *,unsigned char**) ;
 int memcmp (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int xname_cmp(const X509_NAME *a, const X509_NAME *b)
{
    unsigned char *abuf = ((void*)0), *bbuf = ((void*)0);
    int alen, blen, ret;




    alen = i2d_X509_NAME((X509_NAME *)a, &abuf);
    blen = i2d_X509_NAME((X509_NAME *)b, &bbuf);

    if (alen < 0 || blen < 0)
        ret = -2;
    else if (alen != blen)
        ret = alen - blen;
    else
        ret = memcmp(abuf, bbuf, alen);

    OPENSSL_free(abuf);
    OPENSSL_free(bbuf);

    return ret;
}
