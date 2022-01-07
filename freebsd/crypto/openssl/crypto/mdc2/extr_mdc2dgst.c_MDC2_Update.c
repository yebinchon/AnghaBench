
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num; unsigned char const* data; } ;
typedef TYPE_1__ MDC2_CTX ;


 size_t MDC2_BLOCK ;
 int mdc2_body (TYPE_1__*,unsigned char const*,size_t) ;
 int memcpy (unsigned char const*,unsigned char const*,size_t) ;

int MDC2_Update(MDC2_CTX *c, const unsigned char *in, size_t len)
{
    size_t i, j;

    i = c->num;
    if (i != 0) {
        if (len < MDC2_BLOCK - i) {

            memcpy(&(c->data[i]), in, len);
            c->num += (int)len;
            return 1;
        } else {

            j = MDC2_BLOCK - i;
            memcpy(&(c->data[i]), in, j);
            len -= j;
            in += j;
            c->num = 0;
            mdc2_body(c, &(c->data[0]), MDC2_BLOCK);
        }
    }
    i = len & ~((size_t)MDC2_BLOCK - 1);
    if (i > 0)
        mdc2_body(c, in, i);
    j = len - i;
    if (j > 0) {
        memcpy(&(c->data[0]), &(in[i]), j);
        c->num = (int)j;
    }
    return 1;
}
