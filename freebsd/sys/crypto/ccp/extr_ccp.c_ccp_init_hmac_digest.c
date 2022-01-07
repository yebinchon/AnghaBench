
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union authctx {int dummy; } authctx ;
typedef size_t u_int ;
struct TYPE_2__ {char* ipad; char* opad; struct auth_hash* auth_hash; } ;
struct ccp_session {TYPE_1__ hmac; } ;
struct auth_hash {int blocksize; int hashsize; int (* Final ) (char*,union authctx*) ;int (* Update ) (union authctx*,char*,int) ;int (* Init ) (union authctx*) ;} ;
typedef int auth_ctx ;


 char HMAC_IPAD_VAL ;
 char HMAC_OPAD_VAL ;
 int explicit_bzero (union authctx*,int) ;
 int memcpy (char*,char*,int) ;
 int memset (int ,int ,int) ;
 int stub1 (union authctx*) ;
 int stub2 (union authctx*,char*,int) ;
 int stub3 (char*,union authctx*) ;

__attribute__((used)) static void
ccp_init_hmac_digest(struct ccp_session *s, int cri_alg, char *key,
    int klen)
{
 union authctx auth_ctx;
 struct auth_hash *axf;
 u_int i;





 axf = s->hmac.auth_hash;
 klen /= 8;
 if (klen > axf->blocksize) {
  axf->Init(&auth_ctx);
  axf->Update(&auth_ctx, key, klen);
  axf->Final(s->hmac.ipad, &auth_ctx);
  explicit_bzero(&auth_ctx, sizeof(auth_ctx));
  klen = axf->hashsize;
 } else
  memcpy(s->hmac.ipad, key, klen);

 memset(s->hmac.ipad + klen, 0, axf->blocksize - klen);
 memcpy(s->hmac.opad, s->hmac.ipad, axf->blocksize);

 for (i = 0; i < axf->blocksize; i++) {
  s->hmac.ipad[i] ^= HMAC_IPAD_VAL;
  s->hmac.opad[i] ^= HMAC_OPAD_VAL;
 }
}
