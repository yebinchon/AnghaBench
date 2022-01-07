
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_CTRL_PENDING ;
 size_t BIO_ctrl (int *,int ,int ,int *) ;

size_t BIO_ctrl_pending(BIO *bio)
{
    return BIO_ctrl(bio, BIO_CTRL_PENDING, 0, ((void*)0));
}
