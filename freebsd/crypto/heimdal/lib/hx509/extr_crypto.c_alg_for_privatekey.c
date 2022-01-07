
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* hx509_private_key ;
typedef int heim_oid ;
struct TYPE_8__ {int const* digest_alg; int const* sig_alg; int * key_oid; } ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {scalar_t__ (* available ) (TYPE_2__* const,int const*) ;int * key_oid; } ;
typedef int AlgorithmIdentifier ;


 int HX509_SELECT_DIGEST ;
 int HX509_SELECT_PUBLIC_SIG ;
 scalar_t__ der_heim_oid_cmp (int *,int const*) ;
 TYPE_4__** sig_algs ;
 scalar_t__ stub1 (TYPE_2__* const,int const*) ;

__attribute__((used)) static const AlgorithmIdentifier *
alg_for_privatekey(const hx509_private_key pk, int type)
{
    const heim_oid *keytype;
    unsigned int i;

    if (pk->ops == ((void*)0))
 return ((void*)0);

    keytype = pk->ops->key_oid;

    for (i = 0; sig_algs[i]; i++) {
 if (sig_algs[i]->key_oid == ((void*)0))
     continue;
 if (der_heim_oid_cmp(sig_algs[i]->key_oid, keytype) != 0)
     continue;
 if (pk->ops->available &&
     pk->ops->available(pk, sig_algs[i]->sig_alg) == 0)
     continue;
 if (type == HX509_SELECT_PUBLIC_SIG)
     return sig_algs[i]->sig_alg;
 if (type == HX509_SELECT_DIGEST)
     return sig_algs[i]->digest_alg;

 return ((void*)0);
    }
    return ((void*)0);
}
