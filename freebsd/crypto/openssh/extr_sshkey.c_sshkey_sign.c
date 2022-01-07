
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sshkey {int type; } ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_KEY_TYPE_UNKNOWN ;
 size_t SSH_KEY_MAX_SIGN_DATA_SIZE ;
 int ssh_dss_sign (struct sshkey const*,int **,size_t*,int const*,size_t,int ) ;
 int ssh_ecdsa_sign (struct sshkey const*,int **,size_t*,int const*,size_t,int ) ;
 int ssh_ed25519_sign (struct sshkey const*,int **,size_t*,int const*,size_t,int ) ;
 int ssh_rsa_sign (struct sshkey const*,int **,size_t*,int const*,size_t,char const*) ;
 int ssh_xmss_sign (struct sshkey const*,int **,size_t*,int const*,size_t,int ) ;

int
sshkey_sign(const struct sshkey *key,
    u_char **sigp, size_t *lenp,
    const u_char *data, size_t datalen, const char *alg, u_int compat)
{
 if (sigp != ((void*)0))
  *sigp = ((void*)0);
 if (lenp != ((void*)0))
  *lenp = 0;
 if (datalen > SSH_KEY_MAX_SIGN_DATA_SIZE)
  return SSH_ERR_INVALID_ARGUMENT;
 switch (key->type) {
 case 133:
 case 132:
  return ssh_ed25519_sign(key, sigp, lenp, data, datalen, compat);





 default:
  return SSH_ERR_KEY_TYPE_UNKNOWN;
 }
}
