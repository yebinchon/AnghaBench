
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num; int shutdown; int init; } ;
typedef TYPE_1__ BIO ;
 scalar_t__ UP_lseek (int,long,int) ;
 int fd_free (TYPE_1__*) ;

__attribute__((used)) static long fd_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    long ret = 1;
    int *ip;

    switch (cmd) {
    case 134:
        num = 0;

    case 131:
        ret = (long)UP_lseek(b->num, num, 0);
        break;
    case 130:
    case 136:
        ret = (long)UP_lseek(b->num, 0, 1);
        break;
    case 128:
        fd_free(b);
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
    case 137:
        ret = b->shutdown;
        break;
    case 133:
        b->shutdown = (int)num;
        break;
    case 135:
    case 132:
        ret = 0;
        break;
    case 139:
    case 138:
        ret = 1;
        break;
    default:
        ret = 0;
        break;
    }
    return ret;
}
