
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num; int shutdown; int init; } ;
typedef TYPE_1__ BIO ;
 int sock_free (TYPE_1__*) ;

__attribute__((used)) static long sock_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    long ret = 1;
    int *ip;

    switch (cmd) {
    case 128:
        sock_free(b);
        b->num = *((int *)ptr);
        b->shutdown = (int)num;
        b->init = 1;
        break;
    case 129:
        if (b->init) {
            ip = (int *)ptr;
            if (ip != ((void*)0))
                *ip = b->num;
            ret = b->num;
        } else
            ret = -1;
        break;
    case 131:
        ret = b->shutdown;
        break;
    case 130:
        b->shutdown = (int)num;
        break;
    case 133:
    case 132:
        ret = 1;
        break;
    default:
        ret = 0;
        break;
    }
    return ret;
}
