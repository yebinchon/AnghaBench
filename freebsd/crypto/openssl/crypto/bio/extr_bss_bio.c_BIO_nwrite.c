
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_write; int init; } ;
typedef TYPE_1__ BIO ;


 int BIO_C_NWRITE ;
 int BIO_F_BIO_NWRITE ;
 int BIO_R_UNINITIALIZED ;
 int BIO_ctrl (TYPE_1__*,int ,int,char**) ;
 int BIOerr (int ,int ) ;

int BIO_nwrite(BIO *bio, char **buf, int num)
{
    int ret;

    if (!bio->init) {
        BIOerr(BIO_F_BIO_NWRITE, BIO_R_UNINITIALIZED);
        return -2;
    }

    ret = BIO_ctrl(bio, BIO_C_NWRITE, num, buf);
    if (ret > 0)
        bio->num_write += ret;
    return ret;
}
