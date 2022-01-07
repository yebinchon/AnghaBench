
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_hmac_ctx {int alg; int buf_len; int * buf; int * ictx; int * digest; int * octx; } ;


 void* calloc (int,int) ;
 int ssh_digest_blocksize (int *) ;
 void* ssh_digest_start (int) ;
 int ssh_hmac_free (struct ssh_hmac_ctx*) ;

struct ssh_hmac_ctx *
ssh_hmac_start(int alg)
{
 struct ssh_hmac_ctx *ret;

 if ((ret = calloc(1, sizeof(*ret))) == ((void*)0))
  return ((void*)0);
 ret->alg = alg;
 if ((ret->ictx = ssh_digest_start(alg)) == ((void*)0) ||
     (ret->octx = ssh_digest_start(alg)) == ((void*)0) ||
     (ret->digest = ssh_digest_start(alg)) == ((void*)0))
  goto fail;
 ret->buf_len = ssh_digest_blocksize(ret->ictx);
 if ((ret->buf = calloc(1, ret->buf_len)) == ((void*)0))
  goto fail;
 return ret;
fail:
 ssh_hmac_free(ret);
 return ((void*)0);
}
