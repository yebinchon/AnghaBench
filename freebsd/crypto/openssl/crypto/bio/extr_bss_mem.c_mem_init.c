
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int shutdown; int init; int num; char* ptr; } ;
struct TYPE_5__ {int * buf; int * readp; } ;
typedef TYPE_1__ BIO_BUF_MEM ;
typedef TYPE_2__ BIO ;


 int BUF_MEM_free (int *) ;
 int * BUF_MEM_new_ex (unsigned long) ;
 int OPENSSL_free (TYPE_1__*) ;
 void* OPENSSL_zalloc (int) ;

__attribute__((used)) static int mem_init(BIO *bi, unsigned long flags)
{
    BIO_BUF_MEM *bb = OPENSSL_zalloc(sizeof(*bb));

    if (bb == ((void*)0))
        return 0;
    if ((bb->buf = BUF_MEM_new_ex(flags)) == ((void*)0)) {
        OPENSSL_free(bb);
        return 0;
    }
    if ((bb->readp = OPENSSL_zalloc(sizeof(*bb->readp))) == ((void*)0)) {
        BUF_MEM_free(bb->buf);
        OPENSSL_free(bb);
        return 0;
    }
    *bb->readp = *bb->buf;
    bi->shutdown = 1;
    bi->init = 1;
    bi->num = -1;
    bi->ptr = (char *)bb;
    return 1;
}
