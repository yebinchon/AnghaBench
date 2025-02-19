
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshkey {int dummy; } ;


 int SSHKEY_SERIALIZE_DEFAULT ;
 int SSH_DIGEST_MAX_LENGTH ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int * calloc (int,int ) ;
 int explicit_bzero (int *,size_t) ;
 int free (int *) ;
 size_t ssh_digest_bytes (int) ;
 int ssh_digest_memory (int,int *,size_t,int *,int ) ;
 int to_blob (struct sshkey const*,int **,size_t*,int,int ) ;

int
sshkey_fingerprint_raw(const struct sshkey *k, int dgst_alg,
    u_char **retp, size_t *lenp)
{
 u_char *blob = ((void*)0), *ret = ((void*)0);
 size_t blob_len = 0;
 int r = SSH_ERR_INTERNAL_ERROR;

 if (retp != ((void*)0))
  *retp = ((void*)0);
 if (lenp != ((void*)0))
  *lenp = 0;
 if (ssh_digest_bytes(dgst_alg) == 0) {
  r = SSH_ERR_INVALID_ARGUMENT;
  goto out;
 }
 if ((r = to_blob(k, &blob, &blob_len, 1, SSHKEY_SERIALIZE_DEFAULT))
     != 0)
  goto out;
 if ((ret = calloc(1, SSH_DIGEST_MAX_LENGTH)) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((r = ssh_digest_memory(dgst_alg, blob, blob_len,
     ret, SSH_DIGEST_MAX_LENGTH)) != 0)
  goto out;

 if (retp != ((void*)0)) {
  *retp = ret;
  ret = ((void*)0);
 }
 if (lenp != ((void*)0))
  *lenp = ssh_digest_bytes(dgst_alg);
 r = 0;
 out:
 free(ret);
 if (blob != ((void*)0)) {
  explicit_bzero(blob, blob_len);
  free(blob);
 }
 return r;
}
