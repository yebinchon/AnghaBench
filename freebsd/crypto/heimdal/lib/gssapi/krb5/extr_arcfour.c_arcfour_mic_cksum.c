
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void u_char ;
typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_crypto ;
typedef int krb5_context ;
struct TYPE_5__ {void const* data; } ;
struct TYPE_6__ {TYPE_1__ checksum; } ;
typedef TYPE_2__ Checksum ;


 scalar_t__ ENOMEM ;
 int assert (int) ;
 int free (void*) ;
 int free_Checksum (TYPE_2__*) ;
 scalar_t__ krb5_create_checksum (int ,int ,unsigned int,int ,void*,size_t,TYPE_2__*) ;
 int krb5_crypto_destroy (int ,int ) ;
 scalar_t__ krb5_crypto_init (int ,int *,int ,int *) ;
 void* malloc (size_t) ;
 int memcpy (void*,void const*,size_t) ;

__attribute__((used)) static krb5_error_code
arcfour_mic_cksum(krb5_context context,
    krb5_keyblock *key, unsigned usage,
    u_char *sgn_cksum, size_t sgn_cksum_sz,
    const u_char *v1, size_t l1,
    const void *v2, size_t l2,
    const void *v3, size_t l3)
{
    Checksum CKSUM;
    u_char *ptr;
    size_t len;
    krb5_crypto crypto;
    krb5_error_code ret;

    assert(sgn_cksum_sz == 8);

    len = l1 + l2 + l3;

    ptr = malloc(len);
    if (ptr == ((void*)0))
 return ENOMEM;

    memcpy(ptr, v1, l1);
    memcpy(ptr + l1, v2, l2);
    memcpy(ptr + l1 + l2, v3, l3);

    ret = krb5_crypto_init(context, key, 0, &crypto);
    if (ret) {
 free(ptr);
 return ret;
    }

    ret = krb5_create_checksum(context,
          crypto,
          usage,
          0,
          ptr, len,
          &CKSUM);
    free(ptr);
    if (ret == 0) {
 memcpy(sgn_cksum, CKSUM.checksum.data, sgn_cksum_sz);
 free_Checksum(&CKSUM);
    }
    krb5_crypto_destroy(context, crypto);

    return ret;
}
