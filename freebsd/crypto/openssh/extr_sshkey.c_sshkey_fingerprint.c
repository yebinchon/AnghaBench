
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshkey {int dummy; } ;
typedef enum sshkey_fp_rep { ____Placeholder_sshkey_fp_rep } sshkey_fp_rep ;


 int SSH_DIGEST_MD5 ;





 int explicit_bzero (int *,size_t) ;
 char* fingerprint_b64 (int ,int *,size_t) ;
 char* fingerprint_bubblebabble (int *,size_t) ;
 char* fingerprint_hex (int ,int *,size_t) ;
 char* fingerprint_randomart (int ,int *,size_t,struct sshkey const*) ;
 int free (int *) ;
 int ssh_digest_alg_name (int) ;
 scalar_t__ sshkey_fingerprint_raw (struct sshkey const*,int,int **,size_t*) ;

char *
sshkey_fingerprint(const struct sshkey *k, int dgst_alg,
    enum sshkey_fp_rep dgst_rep)
{
 char *retval = ((void*)0);
 u_char *dgst_raw;
 size_t dgst_raw_len;

 if (sshkey_fingerprint_raw(k, dgst_alg, &dgst_raw, &dgst_raw_len) != 0)
  return ((void*)0);
 switch (dgst_rep) {
 case 130:
  if (dgst_alg == SSH_DIGEST_MD5) {
   retval = fingerprint_hex(ssh_digest_alg_name(dgst_alg),
       dgst_raw, dgst_raw_len);
  } else {
   retval = fingerprint_b64(ssh_digest_alg_name(dgst_alg),
       dgst_raw, dgst_raw_len);
  }
  break;
 case 129:
  retval = fingerprint_hex(ssh_digest_alg_name(dgst_alg),
      dgst_raw, dgst_raw_len);
  break;
 case 132:
  retval = fingerprint_b64(ssh_digest_alg_name(dgst_alg),
      dgst_raw, dgst_raw_len);
  break;
 case 131:
  retval = fingerprint_bubblebabble(dgst_raw, dgst_raw_len);
  break;
 case 128:
  retval = fingerprint_randomart(ssh_digest_alg_name(dgst_alg),
      dgst_raw, dgst_raw_len, k);
  break;
 default:
  explicit_bzero(dgst_raw, dgst_raw_len);
  free(dgst_raw);
  return ((void*)0);
 }
 explicit_bzero(dgst_raw, dgst_raw_len);
 free(dgst_raw);
 return retval;
}
