
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_connect () ;
 scalar_t__ BIO_set_conn_hostname (int *,char const*) ;

BIO *BIO_new_connect(const char *str)
{
    BIO *ret;

    ret = BIO_new(BIO_s_connect());
    if (ret == ((void*)0))
        return ((void*)0);
    if (BIO_set_conn_hostname(ret, str))
        return ret;
    BIO_free(ret);
    return ((void*)0);
}
