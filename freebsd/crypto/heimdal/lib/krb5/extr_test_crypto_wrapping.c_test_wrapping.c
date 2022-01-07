
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_enctype ;
struct TYPE_4__ {size_t length; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_crypto ;
typedef int krb5_context ;


 int free (void*) ;
 int krb5_crypto_destroy (int ,int ) ;
 scalar_t__ krb5_crypto_init (int ,int *,int ,int *) ;
 int krb5_data_free (TYPE_1__*) ;
 scalar_t__ krb5_encrypt (int ,int ,int ,void*,size_t,TYPE_1__*) ;
 scalar_t__ krb5_enctype_to_string (int ,int ,char**) ;
 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_errx (int ,int,char*,...) ;
 int krb5_free_keyblock_contents (int ,int *) ;
 scalar_t__ krb5_generate_random_keyblock (int ,int ,int *) ;
 size_t krb5_get_wrapped_length (int ,int ,size_t) ;
 void* malloc (size_t) ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static void
test_wrapping(krb5_context context,
       size_t min_size,
       size_t max_size,
       size_t step,
       krb5_enctype etype)
{
    krb5_error_code ret;
    krb5_keyblock key;
    krb5_crypto crypto;
    krb5_data data;
    char *etype_name;
    void *buf;
    size_t size;

    ret = krb5_generate_random_keyblock(context, etype, &key);
    if (ret)
 krb5_err(context, 1, ret, "krb5_generate_random_keyblock");

    ret = krb5_enctype_to_string(context, etype, &etype_name);
    if (ret)
 krb5_err(context, 1, ret, "krb5_enctype_to_string");

    buf = malloc(max_size);
    if (buf == ((void*)0))
 krb5_errx(context, 1, "out of memory");
    memset(buf, 0, max_size);

    ret = krb5_crypto_init(context, &key, 0, &crypto);
    if (ret)
 krb5_err(context, 1, ret, "krb5_crypto_init");

    for (size = min_size; size < max_size; size += step) {
 size_t wrapped_size;

 ret = krb5_encrypt(context, crypto, 0, buf, size, &data);
 if (ret)
     krb5_err(context, 1, ret, "encrypt size %lu using %s",
       (unsigned long)size, etype_name);

 wrapped_size = krb5_get_wrapped_length(context, crypto, size);

 if (wrapped_size != data.length)
     krb5_errx(context, 1, "calculated wrapped length %lu != "
        "real wrapped length %lu for data length %lu using "
        "enctype %s",
        (unsigned long)wrapped_size,
        (unsigned long)data.length,
        (unsigned long)size,
        etype_name);
 krb5_data_free(&data);
    }

    free(etype_name);
    free(buf);
    krb5_crypto_destroy(context, crypto);
    krb5_free_keyblock_contents(context, &key);
}
