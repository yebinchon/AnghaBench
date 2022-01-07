
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int digests; } ;
typedef int ENGINE_DIGESTS_PTR ;
typedef TYPE_1__ ENGINE ;



int ENGINE_set_digests(ENGINE *e, ENGINE_DIGESTS_PTR f)
{
    e->digests = f;
    return 1;
}
