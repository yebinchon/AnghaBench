
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ num; int flags; scalar_t__ ptr; } ;
struct TYPE_7__ {TYPE_1__* buf; TYPE_1__* readp; } ;
struct TYPE_6__ {size_t length; size_t max; void* data; } ;
typedef TYPE_1__ BUF_MEM ;
typedef TYPE_2__ BIO_BUF_MEM ;
typedef TYPE_3__ BIO ;


 int BIO_FLAGS_MEM_RDONLY ;
 int BIO_F_BIO_NEW_MEM_BUF ;
 int BIO_R_NULL_PARAMETER ;
 TYPE_3__* BIO_new (int ) ;
 int BIO_s_mem () ;
 int BIOerr (int ,int ) ;
 size_t strlen (void const*) ;

BIO *BIO_new_mem_buf(const void *buf, int len)
{
    BIO *ret;
    BUF_MEM *b;
    BIO_BUF_MEM *bb;
    size_t sz;

    if (buf == ((void*)0)) {
        BIOerr(BIO_F_BIO_NEW_MEM_BUF, BIO_R_NULL_PARAMETER);
        return ((void*)0);
    }
    sz = (len < 0) ? strlen(buf) : (size_t)len;
    if ((ret = BIO_new(BIO_s_mem())) == ((void*)0))
        return ((void*)0);
    bb = (BIO_BUF_MEM *)ret->ptr;
    b = bb->buf;

    b->data = (void *)buf;
    b->length = sz;
    b->max = sz;
    *bb->readp = *bb->buf;
    ret->flags |= BIO_FLAGS_MEM_RDONLY;

    ret->num = 0;
    return ret;
}
