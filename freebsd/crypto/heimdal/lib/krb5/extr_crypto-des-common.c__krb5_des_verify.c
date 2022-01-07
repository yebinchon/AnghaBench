
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
struct _krb5_key_data {TYPE_1__* schedule; } ;
struct _krb5_evp_schedule {int dctx; } ;
typedef int res ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int ivec ;
struct TYPE_6__ {int data; } ;
struct TYPE_7__ {TYPE_2__ checksum; } ;
struct TYPE_5__ {struct _krb5_evp_schedule* data; } ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef unsigned char DES_cblock ;
typedef TYPE_3__ Checksum ;


 int ENOMEM ;
 int EVP_Cipher (int ,unsigned char*,int ,int) ;
 int EVP_CipherInit_ex (int ,int *,int *,int *,void*,int) ;
 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,void const*,size_t) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int KRB5KRB_AP_ERR_BAD_INTEGRITY ;
 int N_ (char*,char*) ;
 scalar_t__ ct_memcmp (unsigned char*,unsigned char*,int) ;
 int krb5_clear_error_message (int ) ;
 int krb5_set_error_message (int ,int ,int ) ;
 int memset (unsigned char*,int ,int) ;

krb5_error_code
_krb5_des_verify(krb5_context context,
   const EVP_MD *evp_md,
   struct _krb5_key_data *key,
   const void *data,
   size_t len,
   Checksum *C)
{
    struct _krb5_evp_schedule *ctx = key->schedule->data;
    EVP_MD_CTX *m;
    unsigned char tmp[24];
    unsigned char res[16];
    DES_cblock ivec;
    krb5_error_code ret = 0;

    m = EVP_MD_CTX_create();
    if (m == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }

    memset(&ivec, 0, sizeof(ivec));
    EVP_CipherInit_ex(ctx->dctx, ((void*)0), ((void*)0), ((void*)0), (void *)&ivec, -1);
    EVP_Cipher(ctx->dctx, tmp, C->checksum.data, 24);

    EVP_DigestInit_ex(m, evp_md, ((void*)0));
    EVP_DigestUpdate(m, tmp, 8);
    EVP_DigestUpdate(m, data, len);
    EVP_DigestFinal_ex (m, res, ((void*)0));
    EVP_MD_CTX_destroy(m);
    if(ct_memcmp(res, tmp + 8, sizeof(res)) != 0) {
 krb5_clear_error_message (context);
 ret = KRB5KRB_AP_ERR_BAD_INTEGRITY;
    }
    memset(tmp, 0, sizeof(tmp));
    memset(res, 0, sizeof(res));
    return ret;
}
