
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct _krb5_checksum_type {scalar_t__ checksumsize; scalar_t__ (* checksum ) (int ,int *,int ,scalar_t__,int ,TYPE_8__*) ;int type; } ;
struct TYPE_19__ {int data; } ;
struct TYPE_21__ {TYPE_3__ keyvalue; } ;
typedef TYPE_5__ krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_22__ {scalar_t__ length; int data; } ;
typedef TYPE_6__ krb5_data ;
typedef TYPE_7__* krb5_crypto ;
typedef int krb5_context ;
struct TYPE_24__ {TYPE_6__ checksum; int cksumtype; } ;
struct TYPE_17__ {int key; } ;
struct TYPE_23__ {TYPE_4__* et; TYPE_1__ key; } ;
struct TYPE_20__ {scalar_t__ blocksize; TYPE_2__* keytype; int type; struct _krb5_checksum_type* checksum; } ;
struct TYPE_18__ {int * (* evp ) () ;} ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;
typedef TYPE_8__ Checksum ;


 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_Cipher (int *,int ,int ,scalar_t__) ;
 int EVP_CipherInit_ex (int *,int const*,int *,int ,int *,int) ;
 int N_ (char*,char*) ;
 int krb5_abortx (int ,char*) ;
 scalar_t__ krb5_data_alloc (TYPE_6__*,scalar_t__) ;
 int krb5_data_free (TYPE_6__*) ;
 scalar_t__ krb5_derive_key (int ,int ,int ,char*,int,TYPE_5__**) ;
 int krb5_free_keyblock (int ,TYPE_5__*) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;
 scalar_t__ stub1 (int ,int *,int ,scalar_t__,int ,TYPE_8__*) ;
 int * stub2 () ;

__attribute__((used)) static krb5_error_code
AES_PRF(krb5_context context,
 krb5_crypto crypto,
 const krb5_data *in,
 krb5_data *out)
{
    struct _krb5_checksum_type *ct = crypto->et->checksum;
    krb5_error_code ret;
    Checksum result;
    krb5_keyblock *derived;

    result.cksumtype = ct->type;
    ret = krb5_data_alloc(&result.checksum, ct->checksumsize);
    if (ret) {
 krb5_set_error_message(context, ret, N_("malloc: out memory", ""));
 return ret;
    }

    ret = (*ct->checksum)(context, ((void*)0), in->data, in->length, 0, &result);
    if (ret) {
 krb5_data_free(&result.checksum);
 return ret;
    }

    if (result.checksum.length < crypto->et->blocksize)
 krb5_abortx(context, "internal prf error");

    derived = ((void*)0);
    ret = krb5_derive_key(context, crypto->key.key,
     crypto->et->type, "prf", 3, &derived);
    if (ret)
 krb5_abortx(context, "krb5_derive_key");

    ret = krb5_data_alloc(out, crypto->et->blocksize);
    if (ret)
 krb5_abortx(context, "malloc failed");

    {
 const EVP_CIPHER *c = (*crypto->et->keytype->evp)();
 EVP_CIPHER_CTX *ctx;

 ctx = EVP_CIPHER_CTX_new();
 if (ctx == ((void*)0))
     krb5_abortx(context, "malloc failed");
 EVP_CipherInit_ex(ctx, c, ((void*)0), derived->keyvalue.data, ((void*)0), 1);
 EVP_Cipher(ctx, out->data, result.checksum.data,
     crypto->et->blocksize);
 EVP_CIPHER_CTX_free(ctx);
    }

    krb5_data_free(&result.checksum);
    krb5_free_keyblock(context, derived);

    return ret;
}
