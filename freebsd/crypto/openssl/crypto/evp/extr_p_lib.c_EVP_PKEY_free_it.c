
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * ptr; } ;
struct TYPE_8__ {int * pmeth_engine; int * engine; TYPE_2__ pkey; TYPE_1__* ameth; } ;
struct TYPE_6__ {int (* pkey_free ) (TYPE_3__*) ;} ;
typedef TYPE_3__ EVP_PKEY ;


 int ENGINE_finish (int *) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void EVP_PKEY_free_it(EVP_PKEY *x)
{

    if (x->ameth && x->ameth->pkey_free) {
        x->ameth->pkey_free(x);
        x->pkey.ptr = ((void*)0);
    }

    ENGINE_finish(x->engine);
    x->engine = ((void*)0);
    ENGINE_finish(x->pmeth_engine);
    x->pmeth_engine = ((void*)0);

}
