
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; scalar_t__ init; int num; scalar_t__ shutdown; } ;
typedef TYPE_1__ BIO ;


 int BIO_closesocket (int ) ;

__attribute__((used)) static int dgram_clear(BIO *a)
{
    if (a == ((void*)0))
        return 0;
    if (a->shutdown) {
        if (a->init) {
            BIO_closesocket(a->num);
        }
        a->init = 0;
        a->flags = 0;
    }
    return 1;
}
