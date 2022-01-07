
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_6__ {struct TYPE_6__* readp; } ;
typedef TYPE_1__ BIO_BUF_MEM ;
typedef TYPE_2__ BIO ;


 int OPENSSL_free (TYPE_1__*) ;
 int mem_buf_free (TYPE_2__*) ;

__attribute__((used)) static int mem_free(BIO *a)
{
    BIO_BUF_MEM *bb;

    if (a == ((void*)0))
        return 0;

    bb = (BIO_BUF_MEM *)a->ptr;
    if (!mem_buf_free(a))
        return 0;
    OPENSSL_free(bb->readp);
    OPENSSL_free(bb);
    return 1;
}
