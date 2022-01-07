
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* cb_2 ) (int,int,TYPE_2__*) ;int (* cb_1 ) (int,int,int ) ;} ;
struct TYPE_6__ {int ver; TYPE_1__ cb; int arg; } ;
typedef TYPE_2__ BN_GENCB ;


 int stub1 (int,int,int ) ;
 int stub2 (int,int,TYPE_2__*) ;

int BN_GENCB_call(BN_GENCB *cb, int a, int b)
{

    if (!cb)
        return 1;
    switch (cb->ver) {
    case 1:

        if (!cb->cb.cb_1)
            return 1;
        cb->cb.cb_1(a, b, cb->arg);
        return 1;
    case 2:

        return cb->cb.cb_2(a, b, cb);
    default:
        break;
    }

    return 0;
}
