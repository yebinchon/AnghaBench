
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct _krb5_encryption_type {size_t padsize; size_t confoundersize; int checksum; scalar_t__ (* encrypt ) (int ,int *,unsigned char*,size_t,int ,int ,void*) ;} ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_8__ {size_t length; int * data; } ;
typedef TYPE_1__ krb5_data ;
typedef TYPE_2__* krb5_crypto ;
typedef int krb5_context ;
struct TYPE_10__ {int cksumtype; int checksum; } ;
struct TYPE_9__ {int key; struct _krb5_encryption_type* et; } ;
typedef TYPE_3__ Checksum ;


 size_t CHECKSUMSIZE (int ) ;
 int CHECKSUMTYPE (int ) ;
 scalar_t__ ENOMEM ;
 scalar_t__ KRB5_BAD_MSIZE ;
 int N_ (char*,char*) ;
 scalar_t__ _key_schedule (int ,int *) ;
 int free (unsigned char*) ;
 int free_Checksum (TYPE_3__*) ;
 int krb5_clear_error_message (int ) ;
 scalar_t__ krb5_data_copy (int *,unsigned char*,size_t) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;
 unsigned char* malloc (size_t) ;
 int memcpy (unsigned char*,void*,size_t) ;
 int memmove (unsigned char*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,size_t) ;
 int * realloc (unsigned char*,size_t) ;
 scalar_t__ stub1 (int ,int *,unsigned char*,size_t,int ,int ,void*) ;
 scalar_t__ verify_checksum (int ,int *,int ,unsigned char*,size_t,TYPE_3__*) ;

__attribute__((used)) static krb5_error_code
decrypt_internal(krb5_context context,
   krb5_crypto crypto,
   void *data,
   size_t len,
   krb5_data *result,
   void *ivec)
{
    krb5_error_code ret;
    unsigned char *p;
    Checksum cksum;
    size_t checksum_sz, l;
    struct _krb5_encryption_type *et = crypto->et;

    if ((len % et->padsize) != 0) {
 krb5_clear_error_message(context);
 return KRB5_BAD_MSIZE;
    }
    checksum_sz = CHECKSUMSIZE(et->checksum);
    if (len < checksum_sz + et->confoundersize) {
 krb5_set_error_message(context, KRB5_BAD_MSIZE,
          N_("Encrypted data shorter then "
      "checksum + confunder", ""));
 return KRB5_BAD_MSIZE;
    }

    p = malloc(len);
    if(len != 0 && p == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    memcpy(p, data, len);

    ret = _key_schedule(context, &crypto->key);
    if(ret) {
 free(p);
 return ret;
    }
    ret = (*et->encrypt)(context, &crypto->key, p, len, 0, 0, ivec);
    if (ret) {
 free(p);
 return ret;
    }
    ret = krb5_data_copy(&cksum.checksum, p + et->confoundersize, checksum_sz);
    if(ret) {
  free(p);
  return ret;
    }
    memset(p + et->confoundersize, 0, checksum_sz);
    cksum.cksumtype = CHECKSUMTYPE(et->checksum);
    ret = verify_checksum(context, ((void*)0), 0, p, len, &cksum);
    free_Checksum(&cksum);
    if(ret) {
 free(p);
 return ret;
    }
    l = len - et->confoundersize - checksum_sz;
    memmove(p, p + et->confoundersize + checksum_sz, l);
    result->data = realloc(p, l);
    if(result->data == ((void*)0) && l != 0) {
 free(p);
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    result->length = l;
    return 0;
}
