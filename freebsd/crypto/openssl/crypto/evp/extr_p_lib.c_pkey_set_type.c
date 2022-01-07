
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ ptr; } ;
struct TYPE_10__ {int save_type; TYPE_2__ const* ameth; int type; int * engine; int * pmeth_engine; TYPE_1__ pkey; } ;
struct TYPE_9__ {int pkey_id; } ;
typedef TYPE_2__ EVP_PKEY_ASN1_METHOD ;
typedef TYPE_3__ EVP_PKEY ;
typedef int ENGINE ;


 int ENGINE_finish (int *) ;
 int EVP_F_PKEY_SET_TYPE ;
 TYPE_2__* EVP_PKEY_asn1_find (int **,int) ;
 TYPE_2__* EVP_PKEY_asn1_find_str (int **,char const*,int) ;
 int EVP_PKEY_free_it (TYPE_3__*) ;
 int EVP_R_UNSUPPORTED_ALGORITHM ;
 int EVPerr (int ,int ) ;

__attribute__((used)) static int pkey_set_type(EVP_PKEY *pkey, ENGINE *e, int type, const char *str,
                         int len)
{
    const EVP_PKEY_ASN1_METHOD *ameth;
    ENGINE **eptr = (e == ((void*)0)) ? &e : ((void*)0);

    if (pkey) {
        if (pkey->pkey.ptr)
            EVP_PKEY_free_it(pkey);




        if ((type == pkey->save_type) && pkey->ameth)
            return 1;


        ENGINE_finish(pkey->engine);
        pkey->engine = ((void*)0);
        ENGINE_finish(pkey->pmeth_engine);
        pkey->pmeth_engine = ((void*)0);

    }
    if (str)
        ameth = EVP_PKEY_asn1_find_str(eptr, str, len);
    else
        ameth = EVP_PKEY_asn1_find(eptr, type);

    if (pkey == ((void*)0) && eptr != ((void*)0))
        ENGINE_finish(e);

    if (ameth == ((void*)0)) {
        EVPerr(EVP_F_PKEY_SET_TYPE, EVP_R_UNSUPPORTED_ALGORITHM);
        return 0;
    }
    if (pkey) {
        pkey->ameth = ameth;
        pkey->engine = e;

        pkey->type = pkey->ameth->pkey_id;
        pkey->save_type = type;
    }
    return 1;
}
