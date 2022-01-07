
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _krb5_key_data {TYPE_1__* schedule; } ;
struct _krb5_evp_schedule {int dctx; int ectx; } ;
typedef int krb5_context ;
struct TYPE_2__ {struct _krb5_evp_schedule* data; } ;


 int EVP_CIPHER_CTX_free (int ) ;

void
_krb5_evp_cleanup(krb5_context context, struct _krb5_key_data *kd)
{
    struct _krb5_evp_schedule *key = kd->schedule->data;
    EVP_CIPHER_CTX_free(key->ectx);
    EVP_CIPHER_CTX_free(key->dctx);
}
