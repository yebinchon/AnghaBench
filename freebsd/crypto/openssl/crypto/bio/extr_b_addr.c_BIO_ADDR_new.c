
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sa_family; } ;
struct TYPE_6__ {TYPE_1__ sa; } ;
typedef TYPE_2__ BIO_ADDR ;


 int AF_UNSPEC ;
 int BIO_F_BIO_ADDR_NEW ;
 int BIOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_2__* OPENSSL_zalloc (int) ;

BIO_ADDR *BIO_ADDR_new(void)
{
    BIO_ADDR *ret = OPENSSL_zalloc(sizeof(*ret));

    if (ret == ((void*)0)) {
        BIOerr(BIO_F_BIO_ADDR_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    ret->sa.sa_family = AF_UNSPEC;
    return ret;
}
