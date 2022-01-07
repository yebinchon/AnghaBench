
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_info_cb ;
typedef int BIO ;


 long BIO_callback_ctrl (int *,int,int *) ;
 int * BIO_next (int *) ;

__attribute__((used)) static long ok_callback_ctrl(BIO *b, int cmd, BIO_info_cb *fp)
{
    long ret = 1;
    BIO *next;

    next = BIO_next(b);

    if (next == ((void*)0))
        return 0;

    switch (cmd) {
    default:
        ret = BIO_callback_ctrl(next, cmd, fp);
        break;
    }

    return ret;
}
