
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* ptr; int init; } ;
struct TYPE_5__ {int lrn; int lwn; } ;
typedef TYPE_1__ NBIO_TEST ;
typedef TYPE_2__ BIO ;


 int BIO_F_NBIOF_NEW ;
 int BIOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;

__attribute__((used)) static int nbiof_new(BIO *bi)
{
    NBIO_TEST *nt;

    if ((nt = OPENSSL_zalloc(sizeof(*nt))) == ((void*)0)) {
        BIOerr(BIO_F_NBIOF_NEW, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    nt->lrn = -1;
    nt->lwn = -1;
    bi->ptr = (char *)nt;
    bi->init = 1;
    return 1;
}
