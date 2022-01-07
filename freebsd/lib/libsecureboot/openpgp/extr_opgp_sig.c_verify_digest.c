
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int digest; } ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef TYPE_1__ EVP_MD_CTX ;
typedef int EVP_MD ;


 int EVP_DigestInit (TYPE_1__*,int const*) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 scalar_t__ EVP_PKEY_CTX_set_signature_md (int *,int ) ;
 int EVP_PKEY_verify (int *,unsigned char*,size_t,unsigned char*,size_t) ;
 scalar_t__ EVP_PKEY_verify_init (int *) ;
 int * EVP_get_digestbyname (char const*) ;
 int initialize () ;

__attribute__((used)) static int
verify_digest (EVP_PKEY *pkey,
    const char *digest,
    unsigned char *mdata, size_t mlen,
    unsigned char *sdata, size_t slen)
{
 EVP_MD_CTX ctx;
 const EVP_MD *md = ((void*)0);
 EVP_PKEY_CTX *pctx = ((void*)0);
 int rc = 0;
 int i = -1;

 initialize();
 md = EVP_get_digestbyname(digest);
 EVP_DigestInit(&ctx, md);

 pctx = EVP_PKEY_CTX_new(pkey, ((void*)0));
 if (!pctx)
  goto fail;
 if (EVP_PKEY_verify_init(pctx) <= 0)
  goto fail;
 if (EVP_PKEY_CTX_set_signature_md(pctx, ctx.digest) <= 0)
  goto fail;
 i = EVP_PKEY_verify(pctx, sdata, slen, mdata, mlen);
 if (i >= 0)
  rc = i;
fail:
 EVP_PKEY_CTX_free(pctx);
 return (rc);
}
