
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct _krb5_key_data {int dummy; } ;
struct _krb5_encryption_type {size_t confoundersize; size_t padsize; int keyed_checksum; scalar_t__ (* encrypt ) (int ,struct _krb5_key_data*,unsigned char*,size_t,int ,unsigned int,void*) ;} ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_11__ {unsigned long length; int * data; } ;
typedef TYPE_2__ krb5_data ;
typedef TYPE_3__* krb5_crypto ;
typedef int krb5_context ;
struct TYPE_10__ {unsigned char* data; size_t length; } ;
struct TYPE_13__ {int cksumtype; TYPE_1__ checksum; } ;
struct TYPE_12__ {struct _krb5_encryption_type* et; } ;
typedef TYPE_4__ Checksum ;


 size_t CHECKSUMSIZE (int ) ;
 int CHECKSUMTYPE (int ) ;
 int ENCRYPTION_USAGE (unsigned int) ;
 scalar_t__ ENOMEM ;
 int INTEGRITY_USAGE (unsigned int) ;
 scalar_t__ KRB5_BAD_MSIZE ;
 int N_ (char*,char*) ;
 scalar_t__ _get_derived_key (int ,TYPE_3__*,int ,struct _krb5_key_data**) ;
 scalar_t__ _key_schedule (int ,struct _krb5_key_data*) ;
 int free (unsigned char*) ;
 int krb5_clear_error_message (int ) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;
 unsigned char* malloc (size_t) ;
 int memcpy (unsigned char*,void*,size_t) ;
 int memmove (unsigned char*,unsigned char*,unsigned long) ;
 int * realloc (unsigned char*,unsigned long) ;
 scalar_t__ stub1 (int ,struct _krb5_key_data*,unsigned char*,size_t,int ,unsigned int,void*) ;
 scalar_t__ verify_checksum (int ,TYPE_3__*,int ,unsigned char*,size_t,TYPE_4__*) ;

__attribute__((used)) static krb5_error_code
decrypt_internal_derived(krb5_context context,
    krb5_crypto crypto,
    unsigned usage,
    void *data,
    size_t len,
    krb5_data *result,
    void *ivec)
{
    size_t checksum_sz;
    Checksum cksum;
    unsigned char *p;
    krb5_error_code ret;
    struct _krb5_key_data *dkey;
    struct _krb5_encryption_type *et = crypto->et;
    unsigned long l;

    checksum_sz = CHECKSUMSIZE(et->keyed_checksum);
    if (len < checksum_sz + et->confoundersize) {
 krb5_set_error_message(context, KRB5_BAD_MSIZE,
          N_("Encrypted data shorter then "
      "checksum + confunder", ""));
 return KRB5_BAD_MSIZE;
    }

    if (((len - checksum_sz) % et->padsize) != 0) {
 krb5_clear_error_message(context);
 return KRB5_BAD_MSIZE;
    }

    p = malloc(len);
    if(len != 0 && p == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    memcpy(p, data, len);

    len -= checksum_sz;

    ret = _get_derived_key(context, crypto, ENCRYPTION_USAGE(usage), &dkey);
    if(ret) {
 free(p);
 return ret;
    }
    ret = _key_schedule(context, dkey);
    if(ret) {
 free(p);
 return ret;
    }
    ret = (*et->encrypt)(context, dkey, p, len, 0, usage, ivec);
    if (ret) {
 free(p);
 return ret;
    }

    cksum.checksum.data = p + len;
    cksum.checksum.length = checksum_sz;
    cksum.cksumtype = CHECKSUMTYPE(et->keyed_checksum);

    ret = verify_checksum(context,
     crypto,
     INTEGRITY_USAGE(usage),
     p,
     len,
     &cksum);
    if(ret) {
 free(p);
 return ret;
    }
    l = len - et->confoundersize;
    memmove(p, p + et->confoundersize, l);
    result->data = realloc(p, l);
    if(result->data == ((void*)0) && l != 0) {
 free(p);
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    result->length = l;
    return 0;
}
