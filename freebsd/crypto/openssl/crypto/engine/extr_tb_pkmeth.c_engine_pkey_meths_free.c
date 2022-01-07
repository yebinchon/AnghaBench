
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* pkey_meths ) (TYPE_1__*,int **,int const**,int const) ;} ;
typedef int EVP_PKEY_METHOD ;
typedef TYPE_1__ ENGINE ;


 int EVP_PKEY_meth_free (int *) ;
 int stub1 (TYPE_1__*,int **,int const**,int const) ;
 int stub2 (TYPE_1__*,int **,int const**,int const) ;

void engine_pkey_meths_free(ENGINE *e)
{
    int i;
    EVP_PKEY_METHOD *pkm;
    if (e->pkey_meths) {
        const int *pknids;
        int npknids;
        npknids = e->pkey_meths(e, ((void*)0), &pknids, 0);
        for (i = 0; i < npknids; i++) {
            if (e->pkey_meths(e, &pkm, ((void*)0), pknids[i])) {
                EVP_PKEY_meth_free(pkm);
            }
        }
    }
}
