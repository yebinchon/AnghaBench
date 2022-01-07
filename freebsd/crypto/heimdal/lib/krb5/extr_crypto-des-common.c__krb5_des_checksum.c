
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _krb5_key_data {TYPE_1__* schedule; } ;
struct _krb5_evp_schedule {int ectx; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int ivec ;
struct TYPE_6__ {unsigned char* data; } ;
struct TYPE_7__ {TYPE_2__ checksum; } ;
struct TYPE_5__ {struct _krb5_evp_schedule* data; } ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int DES_cblock ;
typedef TYPE_3__ Checksum ;


 int ENOMEM ;
 int EVP_Cipher (int ,unsigned char*,unsigned char*,int) ;
 int EVP_CipherInit_ex (int ,int *,int *,int *,void*,int) ;
 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,void const*,size_t) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int N_ (char*,char*) ;
 int krb5_generate_random_block (unsigned char*,int) ;
 int krb5_set_error_message (int ,int ,int ) ;
 int memset (int *,int ,int) ;

krb5_error_code
_krb5_des_checksum(krb5_context context,
     const EVP_MD *evp_md,
     struct _krb5_key_data *key,
     const void *data,
     size_t len,
     Checksum *cksum)
{
    struct _krb5_evp_schedule *ctx = key->schedule->data;
    EVP_MD_CTX *m;
    DES_cblock ivec;
    unsigned char *p = cksum->checksum.data;

    krb5_generate_random_block(p, 8);

    m = EVP_MD_CTX_create();
    if (m == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }

    EVP_DigestInit_ex(m, evp_md, ((void*)0));
    EVP_DigestUpdate(m, p, 8);
    EVP_DigestUpdate(m, data, len);
    EVP_DigestFinal_ex (m, p + 8, ((void*)0));
    EVP_MD_CTX_destroy(m);
    memset (&ivec, 0, sizeof(ivec));
    EVP_CipherInit_ex(ctx->ectx, ((void*)0), ((void*)0), ((void*)0), (void *)&ivec, -1);
    EVP_Cipher(ctx->ectx, p, p, 24);

    return 0;
}
