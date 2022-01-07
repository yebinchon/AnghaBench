
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ciphers; } ;
typedef int ENGINE_CIPHERS_PTR ;
typedef TYPE_1__ ENGINE ;



int ENGINE_set_ciphers(ENGINE *e, ENGINE_CIPHERS_PTR f)
{
    e->ciphers = f;
    return 1;
}
