
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct _krb5_key_type {int bits; int type; } ;
struct _krb5_key_data {int * schedule; TYPE_2__* key; } ;
struct _krb5_encryption_type {int blocksize; int (* encrypt ) (int ,struct _krb5_key_data*,void*,size_t,int,int ,int *) ;struct _krb5_key_type* keytype; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_3__ {unsigned char* data; unsigned int length; } ;
struct TYPE_4__ {TYPE_1__ keyvalue; } ;




 scalar_t__ ENOMEM ;

 scalar_t__ KRB5_CRYPTO_INTERNAL ;
 int N_ (char*,char*) ;
 scalar_t__ _key_schedule (int ,struct _krb5_key_data*) ;
 int _krb5_DES3_random_to_key (int ,TYPE_2__*,unsigned char*,unsigned int) ;
 scalar_t__ _krb5_n_fold (void*,size_t,unsigned char*,size_t) ;
 int free (unsigned char*) ;
 int free_key_schedule (int ,struct _krb5_key_data*,struct _krb5_encryption_type*) ;
 int krb5_set_error_message (int ,scalar_t__,int ,...) ;
 void* malloc (size_t) ;
 int memcpy (unsigned char*,unsigned char*,unsigned int) ;
 int memset (unsigned char*,int ,unsigned int) ;
 int stub1 (int ,struct _krb5_key_data*,unsigned char*,unsigned int,int,int ,int *) ;
 int stub2 (int ,struct _krb5_key_data*,void*,size_t,int,int ,int *) ;

krb5_error_code
_krb5_derive_key(krb5_context context,
   struct _krb5_encryption_type *et,
   struct _krb5_key_data *key,
   const void *constant,
   size_t len)
{
    unsigned char *k = ((void*)0);
    unsigned int nblocks = 0, i;
    krb5_error_code ret = 0;
    struct _krb5_key_type *kt = et->keytype;

    ret = _key_schedule(context, key);
    if(ret)
 return ret;
    if(et->blocksize * 8 < kt->bits || len != et->blocksize) {
 nblocks = (kt->bits + et->blocksize * 8 - 1) / (et->blocksize * 8);
 k = malloc(nblocks * et->blocksize);
 if(k == ((void*)0)) {
     ret = ENOMEM;
     krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
     goto out;
 }
 ret = _krb5_n_fold(constant, len, k, et->blocksize);
 if (ret) {
     krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
     goto out;
 }

 for(i = 0; i < nblocks; i++) {
     if(i > 0)
  memcpy(k + i * et->blocksize,
         k + (i - 1) * et->blocksize,
         et->blocksize);
     (*et->encrypt)(context, key, k + i * et->blocksize, et->blocksize,
      1, 0, ((void*)0));
 }
    } else {

 void *c = malloc(len);
 size_t res_len = (kt->bits + 7) / 8;

 if(len != 0 && c == ((void*)0)) {
     ret = ENOMEM;
     krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
     goto out;
 }
 memcpy(c, constant, len);
 (*et->encrypt)(context, key, c, len, 1, 0, ((void*)0));
 k = malloc(res_len);
 if(res_len != 0 && k == ((void*)0)) {
     free(c);
     ret = ENOMEM;
     krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
     goto out;
 }
 ret = _krb5_n_fold(c, len, k, res_len);
 free(c);
 if (ret) {
     krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
     goto out;
 }
    }


    switch(kt->type) {
    case 128:
 _krb5_DES3_random_to_key(context, key->key, k, nblocks * et->blocksize);
 break;
    case 130:
    case 129:
 memcpy(key->key->keyvalue.data, k, key->key->keyvalue.length);
 break;
    default:
 ret = KRB5_CRYPTO_INTERNAL;
 krb5_set_error_message(context, ret,
          N_("derive_key() called with unknown keytype (%u)", ""),
          kt->type);
 break;
    }
 out:
    if (key->schedule) {
 free_key_schedule(context, key, et);
 key->schedule = ((void*)0);
    }
    if (k) {
 memset(k, 0, nblocks * et->blocksize);
 free(k);
    }
    return ret;
}
