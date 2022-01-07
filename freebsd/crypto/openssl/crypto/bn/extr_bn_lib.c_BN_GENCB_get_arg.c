
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* arg; } ;
typedef TYPE_1__ BN_GENCB ;



void *BN_GENCB_get_arg(BN_GENCB *cb)
{
    return cb->arg;
}
