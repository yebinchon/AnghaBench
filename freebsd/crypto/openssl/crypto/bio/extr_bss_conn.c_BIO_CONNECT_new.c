
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int connect_family; int state; } ;
typedef TYPE_1__ BIO_CONNECT ;


 int BIO_CONN_S_BEFORE ;
 int BIO_FAMILY_IPANY ;
 int BIO_F_BIO_CONNECT_NEW ;
 int BIOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;

BIO_CONNECT *BIO_CONNECT_new(void)
{
    BIO_CONNECT *ret;

    if ((ret = OPENSSL_zalloc(sizeof(*ret))) == ((void*)0)) {
        BIOerr(BIO_F_BIO_CONNECT_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    ret->state = BIO_CONN_S_BEFORE;
    ret->connect_family = BIO_FAMILY_IPANY;
    return ret;
}
