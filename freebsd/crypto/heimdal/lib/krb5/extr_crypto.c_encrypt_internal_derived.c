
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct _krb5_key_data {int dummy; } ;
struct _krb5_encryption_type {size_t confoundersize; size_t padsize; scalar_t__ (* encrypt ) (int ,struct _krb5_key_data*,unsigned char*,size_t,int,unsigned int,void*) ;int keyed_checksum; } ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_12__ {unsigned char* data; size_t length; } ;
typedef TYPE_2__ krb5_data ;
typedef TYPE_3__* krb5_crypto ;
typedef int krb5_context ;
struct TYPE_11__ {size_t length; void const* data; } ;
struct TYPE_14__ {TYPE_1__ checksum; } ;
struct TYPE_13__ {struct _krb5_encryption_type* et; } ;
typedef TYPE_4__ Checksum ;


 size_t CHECKSUMSIZE (int ) ;
 int ENCRYPTION_USAGE (unsigned int) ;
 scalar_t__ ENOMEM ;
 int INTEGRITY_USAGE (unsigned int) ;
 scalar_t__ KRB5_CRYPTO_INTERNAL ;
 int N_ (char*,char*) ;
 scalar_t__ _get_derived_key (int ,TYPE_3__*,int ,struct _krb5_key_data**) ;
 scalar_t__ _key_schedule (int ,struct _krb5_key_data*) ;
 unsigned char* calloc (int,size_t) ;
 scalar_t__ create_checksum (int ,int ,TYPE_3__*,int ,unsigned char*,size_t,TYPE_4__*) ;
 int free (unsigned char*) ;
 int free_Checksum (TYPE_4__*) ;
 int krb5_clear_error_message (int ) ;
 int krb5_generate_random_block (unsigned char*,size_t) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;
 int memcpy (unsigned char*,void const*,size_t) ;
 int memset (unsigned char*,int ,size_t) ;
 scalar_t__ stub1 (int ,struct _krb5_key_data*,unsigned char*,size_t,int,unsigned int,void*) ;

__attribute__((used)) static krb5_error_code
encrypt_internal_derived(krb5_context context,
    krb5_crypto crypto,
    unsigned usage,
    const void *data,
    size_t len,
    krb5_data *result,
    void *ivec)
{
    size_t sz, block_sz, checksum_sz, total_sz;
    Checksum cksum;
    unsigned char *p, *q;
    krb5_error_code ret;
    struct _krb5_key_data *dkey;
    const struct _krb5_encryption_type *et = crypto->et;

    checksum_sz = CHECKSUMSIZE(et->keyed_checksum);

    sz = et->confoundersize + len;
    block_sz = (sz + et->padsize - 1) &~ (et->padsize - 1);
    total_sz = block_sz + checksum_sz;
    p = calloc(1, total_sz);
    if(p == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }

    q = p;
    krb5_generate_random_block(q, et->confoundersize);
    q += et->confoundersize;
    memcpy(q, data, len);

    ret = create_checksum(context,
     et->keyed_checksum,
     crypto,
     INTEGRITY_USAGE(usage),
     p,
     block_sz,
     &cksum);
    if(ret == 0 && cksum.checksum.length != checksum_sz) {
 free_Checksum (&cksum);
 krb5_clear_error_message (context);
 ret = KRB5_CRYPTO_INTERNAL;
    }
    if(ret)
 goto fail;
    memcpy(p + block_sz, cksum.checksum.data, cksum.checksum.length);
    free_Checksum (&cksum);
    ret = _get_derived_key(context, crypto, ENCRYPTION_USAGE(usage), &dkey);
    if(ret)
 goto fail;
    ret = _key_schedule(context, dkey);
    if(ret)
 goto fail;
    ret = (*et->encrypt)(context, dkey, p, block_sz, 1, usage, ivec);
    if (ret)
 goto fail;
    result->data = p;
    result->length = total_sz;
    return 0;
 fail:
    memset(p, 0, total_sz);
    free(p);
    return ret;
}
