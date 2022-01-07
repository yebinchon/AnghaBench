
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct _krb5_key_type {int * (* evp ) () ;} ;
struct _krb5_key_data {TYPE_3__* key; TYPE_1__* schedule; } ;
struct _krb5_evp_schedule {int * dctx; int * ectx; } ;
typedef int krb5_context ;
struct TYPE_5__ {int data; } ;
struct TYPE_6__ {TYPE_2__ keyvalue; } ;
struct TYPE_4__ {struct _krb5_evp_schedule* data; } ;
typedef int EVP_CIPHER ;


 int ENOMEM ;
 void* EVP_CIPHER_CTX_new () ;
 int EVP_CipherInit_ex (int *,int const*,int *,int ,int *,int) ;
 int krb5_abort (int ,int ,char*) ;
 int * stub1 () ;

void
_krb5_evp_schedule(krb5_context context,
     struct _krb5_key_type *kt,
     struct _krb5_key_data *kd)
{
    struct _krb5_evp_schedule *key = kd->schedule->data;
    const EVP_CIPHER *c = (*kt->evp)();

    key->ectx = EVP_CIPHER_CTX_new();
    key->dctx = EVP_CIPHER_CTX_new();
    if (key->ectx == ((void*)0) || key->dctx == ((void*)0))
 krb5_abort(context, ENOMEM, "malloc failed");

    EVP_CipherInit_ex(key->ectx, c, ((void*)0), kd->key->keyvalue.data, ((void*)0), 1);
    EVP_CipherInit_ex(key->dctx, c, ((void*)0), kd->key->keyvalue.data, ((void*)0), 0);
}
