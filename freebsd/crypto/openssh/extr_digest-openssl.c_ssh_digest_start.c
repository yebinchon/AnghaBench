
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_digest_ctx {int alg; int * mdctx; } ;
struct ssh_digest {int (* mdfunc ) () ;} ;


 int EVP_DigestInit_ex (int *,int ,int *) ;
 int * EVP_MD_CTX_new () ;
 struct ssh_digest_ctx* calloc (int,int) ;
 int free (struct ssh_digest_ctx*) ;
 struct ssh_digest* ssh_digest_by_alg (int) ;
 int ssh_digest_free (struct ssh_digest_ctx*) ;
 int stub1 () ;

struct ssh_digest_ctx *
ssh_digest_start(int alg)
{
 const struct ssh_digest *digest = ssh_digest_by_alg(alg);
 struct ssh_digest_ctx *ret;

 if (digest == ((void*)0) || ((ret = calloc(1, sizeof(*ret))) == ((void*)0)))
  return ((void*)0);
 ret->alg = alg;
 if ((ret->mdctx = EVP_MD_CTX_new()) == ((void*)0)) {
  free(ret);
  return ((void*)0);
 }
 if (EVP_DigestInit_ex(ret->mdctx, digest->mdfunc(), ((void*)0)) != 1) {
  ssh_digest_free(ret);
  return ((void*)0);
 }
 return ret;
}
