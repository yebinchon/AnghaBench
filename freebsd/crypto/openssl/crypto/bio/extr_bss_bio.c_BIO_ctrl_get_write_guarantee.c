
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_C_GET_WRITE_GUARANTEE ;
 size_t BIO_ctrl (int *,int ,int ,int *) ;

size_t BIO_ctrl_get_write_guarantee(BIO *bio)
{
    return BIO_ctrl(bio, BIO_C_GET_WRITE_GUARANTEE, 0, ((void*)0));
}
