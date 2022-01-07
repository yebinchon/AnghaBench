
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* data; size_t length; } ;
typedef TYPE_2__ krb5_data ;
struct TYPE_7__ {size_t length; char* data; } ;
struct TYPE_9__ {TYPE_1__ data; int flags; } ;
typedef TYPE_3__ krb5_crypto_iov ;
typedef int krb5_crypto ;
typedef int krb5_context ;
typedef int iov ;


 int KRB5_CRYPTO_TYPE_CHECKSUM ;
 int KRB5_CRYPTO_TYPE_DATA ;
 int KRB5_CRYPTO_TYPE_TRAILER ;
 char* emalloc (size_t) ;
 int free (char*) ;
 int krb5_create_checksum_iov (int ,int ,unsigned int,TYPE_3__*,int,int *) ;
 int krb5_crypto_length (int ,int ,int ,size_t*) ;
 int krb5_err (int ,int,int,char*) ;
 int krb5_verify_checksum_iov (int ,int ,unsigned int,TYPE_3__*,int,int *) ;
 char* malloc (size_t) ;

__attribute__((used)) static int
krb_checksum_iov(krb5_context context,
   krb5_crypto crypto,
   unsigned usage,
   krb5_data *plain)
{
    krb5_crypto_iov iov[4];
    int ret;
    char *p;
    size_t len;

    p = plain->data;
    len = plain->length;

    iov[0].flags = KRB5_CRYPTO_TYPE_CHECKSUM;
    krb5_crypto_length(context, crypto, iov[0].flags, &iov[0].data.length);
    iov[0].data.data = emalloc(iov[0].data.length);

    iov[1].flags = KRB5_CRYPTO_TYPE_DATA;
    iov[1].data.length = len;
    iov[1].data.data = p;

    iov[2].flags = KRB5_CRYPTO_TYPE_TRAILER;
    krb5_crypto_length(context, crypto, iov[0].flags, &iov[2].data.length);
    iov[2].data.data = malloc(iov[2].data.length);

    ret = krb5_create_checksum_iov(context, crypto, usage,
       iov, sizeof(iov)/sizeof(iov[0]), ((void*)0));
    if (ret)
 krb5_err(context, 1, ret, "krb5_create_checksum_iov failed");

    ret = krb5_verify_checksum_iov(context, crypto, usage, iov, sizeof(iov)/sizeof(iov[0]), ((void*)0));
    if (ret)
 krb5_err(context, 1, ret, "krb5_verify_checksum_iov");

    free(iov[0].data.data);
    free(iov[2].data.data);

    return 0;
}
