
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _krb5_key_data {TYPE_1__* schedule; } ;
struct _krb5_evp_schedule {int * dctx; int * ectx; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef scalar_t__ krb5_boolean ;
struct TYPE_2__ {struct _krb5_evp_schedule* data; } ;
typedef int EVP_CIPHER_CTX ;


 int ENOMEM ;
 size_t EVP_CIPHER_CTX_iv_length (int *) ;
 int EVP_Cipher (int *,void*,void*,size_t) ;
 int EVP_CipherInit_ex (int *,int *,int *,int *,void*,int) ;
 int free (void*) ;
 int krb5_clear_error_message (int ) ;
 void* malloc (size_t) ;
 int memset (void*,int ,size_t) ;

krb5_error_code
_krb5_evp_encrypt(krb5_context context,
  struct _krb5_key_data *key,
  void *data,
  size_t len,
  krb5_boolean encryptp,
  int usage,
  void *ivec)
{
    struct _krb5_evp_schedule *ctx = key->schedule->data;
    EVP_CIPHER_CTX *c;
    c = encryptp ? ctx->ectx : ctx->dctx;
    if (ivec == ((void*)0)) {

 size_t len2 = EVP_CIPHER_CTX_iv_length(c);
 void *loiv = malloc(len2);
 if (loiv == ((void*)0)) {
     krb5_clear_error_message(context);
     return ENOMEM;
 }
 memset(loiv, 0, len2);
 EVP_CipherInit_ex(c, ((void*)0), ((void*)0), ((void*)0), loiv, -1);
 free(loiv);
    } else
 EVP_CipherInit_ex(c, ((void*)0), ((void*)0), ((void*)0), ivec, -1);
    EVP_Cipher(c, data, data, len);
    return 0;
}
