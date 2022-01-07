
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* hx509_crypto ;
struct TYPE_6__ {TYPE_2__* data; } ;
struct TYPE_7__ {int oid; struct TYPE_7__* param; TYPE_1__ key; struct TYPE_7__* name; } ;


 int der_free_oid (int *) ;
 int free (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;

void
hx509_crypto_destroy(hx509_crypto crypto)
{
    if (crypto->name)
 free(crypto->name);
    if (crypto->key.data)
 free(crypto->key.data);
    if (crypto->param)
 free(crypto->param);
    der_free_oid(&crypto->oid);
    memset(crypto, 0, sizeof(*crypto));
    free(crypto);
}
