
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_enctype ;
typedef int krb5_data ;
typedef int krb5_crypto ;
typedef int krb5_context ;


 int free (char*) ;
 int gettimeofday (struct timeval*,int *) ;
 int krb5_crypto_destroy (int ,int ) ;
 scalar_t__ krb5_crypto_init (int ,int *,int ,int *) ;
 int krb5_data_free (int *) ;
 scalar_t__ krb5_encrypt (int ,int ,int ,void*,size_t,int *) ;
 scalar_t__ krb5_enctype_to_string (int ,int ,char**) ;
 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_free_keyblock_contents (int ,int *) ;
 scalar_t__ krb5_generate_random_keyblock (int ,int ,int *) ;
 void* malloc (size_t) ;
 int memset (void*,int ,size_t) ;
 int printf (char*,char*,unsigned long,int,long,long) ;
 int timevalsub (struct timeval*,struct timeval*) ;

__attribute__((used)) static void
time_encryption(krb5_context context, size_t size,
  krb5_enctype etype, int iterations)
{
    struct timeval tv1, tv2;
    krb5_error_code ret;
    krb5_keyblock key;
    krb5_crypto crypto;
    krb5_data data;
    char *etype_name;
    void *buf;
    int i;

    ret = krb5_generate_random_keyblock(context, etype, &key);
    if (ret)
 krb5_err(context, 1, ret, "krb5_generate_random_keyblock");

    ret = krb5_enctype_to_string(context, etype, &etype_name);
    if (ret)
 krb5_err(context, 1, ret, "krb5_enctype_to_string");

    buf = malloc(size);
    if (buf == ((void*)0))
 krb5_errx(context, 1, "out of memory");
    memset(buf, 0, size);

    ret = krb5_crypto_init(context, &key, 0, &crypto);
    if (ret)
 krb5_err(context, 1, ret, "krb5_crypto_init");

    gettimeofday(&tv1, ((void*)0));

    for (i = 0; i < iterations; i++) {
 ret = krb5_encrypt(context, crypto, 0, buf, size, &data);
 if (ret)
     krb5_err(context, 1, ret, "encrypt: %d", i);
 krb5_data_free(&data);
    }

    gettimeofday(&tv2, ((void*)0));

    timevalsub(&tv2, &tv1);

    printf("%s size: %7lu iterations: %d time: %3ld.%06ld\n",
    etype_name, (unsigned long)size, iterations,
    (long)tv2.tv_sec, (long)tv2.tv_usec);

    free(buf);
    free(etype_name);
    krb5_crypto_destroy(context, crypto);
    krb5_free_keyblock_contents(context, &key);
}
