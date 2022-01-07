
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef char u_char ;
struct sshbuf {int dummy; } ;
struct ssh_digest_ctx {int dummy; } ;
struct ssh {struct kex* kex; } ;
struct kex {char* session_id; size_t session_id_len; int hash_alg; } ;


 int ROUNDUP (size_t,size_t) ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 char* calloc (int,int ) ;
 int dump_digest (char*,char*,size_t) ;
 int fprintf (int ,char*,char) ;
 int free (char*) ;
 size_t ssh_digest_bytes (int ) ;
 scalar_t__ ssh_digest_final (struct ssh_digest_ctx*,char*,size_t) ;
 int ssh_digest_free (struct ssh_digest_ctx*) ;
 struct ssh_digest_ctx* ssh_digest_start (int ) ;
 scalar_t__ ssh_digest_update (struct ssh_digest_ctx*,char*,size_t) ;
 scalar_t__ ssh_digest_update_buffer (struct ssh_digest_ctx*,struct sshbuf const*) ;
 int stderr ;

__attribute__((used)) static int
derive_key(struct ssh *ssh, int id, u_int need, u_char *hash, u_int hashlen,
    const struct sshbuf *shared_secret, u_char **keyp)
{
 struct kex *kex = ssh->kex;
 struct ssh_digest_ctx *hashctx = ((void*)0);
 char c = id;
 u_int have;
 size_t mdsz;
 u_char *digest;
 int r;

 if ((mdsz = ssh_digest_bytes(kex->hash_alg)) == 0)
  return SSH_ERR_INVALID_ARGUMENT;
 if ((digest = calloc(1, ROUNDUP(need, mdsz))) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }


 if ((hashctx = ssh_digest_start(kex->hash_alg)) == ((void*)0) ||
     ssh_digest_update_buffer(hashctx, shared_secret) != 0 ||
     ssh_digest_update(hashctx, hash, hashlen) != 0 ||
     ssh_digest_update(hashctx, &c, 1) != 0 ||
     ssh_digest_update(hashctx, kex->session_id,
     kex->session_id_len) != 0 ||
     ssh_digest_final(hashctx, digest, mdsz) != 0) {
  r = SSH_ERR_LIBCRYPTO_ERROR;
  goto out;
 }
 ssh_digest_free(hashctx);
 hashctx = ((void*)0);






 for (have = mdsz; need > have; have += mdsz) {
  if ((hashctx = ssh_digest_start(kex->hash_alg)) == ((void*)0) ||
      ssh_digest_update_buffer(hashctx, shared_secret) != 0 ||
      ssh_digest_update(hashctx, hash, hashlen) != 0 ||
      ssh_digest_update(hashctx, digest, have) != 0 ||
      ssh_digest_final(hashctx, digest + have, mdsz) != 0) {
   r = SSH_ERR_LIBCRYPTO_ERROR;
   goto out;
  }
  ssh_digest_free(hashctx);
  hashctx = ((void*)0);
 }




 *keyp = digest;
 digest = ((void*)0);
 r = 0;
 out:
 free(digest);
 ssh_digest_free(hashctx);
 return r;
}
