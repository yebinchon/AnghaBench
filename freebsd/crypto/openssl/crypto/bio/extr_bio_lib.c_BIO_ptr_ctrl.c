
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 scalar_t__ BIO_ctrl (int *,int,long,char*) ;

void *BIO_ptr_ctrl(BIO *b, int cmd, long larg)
{
    void *p = ((void*)0);

    if (BIO_ctrl(b, cmd, larg, (char *)&p) <= 0)
        return ((void*)0);
    else
        return p;
}
