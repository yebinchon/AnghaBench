
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int * BIO_new (int ) ;
 int BIO_s_fd () ;
 int BIO_set_fd (int *,int,int) ;

BIO *BIO_new_fd(int fd, int close_flag)
{
    BIO *ret;
    ret = BIO_new(BIO_s_fd());
    if (ret == ((void*)0))
        return ((void*)0);
    BIO_set_fd(ret, fd, close_flag);
    return ret;
}
