
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
 int ssh_dss_verify (struct sshkey const*,int const*,size_t,int const*,size_t,int ) ;
 int ssh_ecdsa_verify (struct sshkey const*,int const*,size_t,int const*,size_t,int ) ;
 int ssh_ed25519_verify (struct sshkey const*,int const*,size_t,int const*,size_t,int ) ;
 int ssh_rsa_verify (struct sshkey const*,int const*,size_t,int const*,size_t,char const*) ;
 int ssh_xmss_verify (struct sshkey const*,int const*,size_t,int const*,size_t,int ) ;

int
sshkey_verify(const struct sshkey *key,
    const u_char *sig, size_t siglen,
    const u_char *data, size_t dlen, const char *alg, u_int compat)
{
 if (siglen == 0 || dlen > SSH_KEY_MAX_SIGN_DATA_SIZE)
  return SSH_ERR_INVALID_ARGUMENT;
 switch (key->type) {
 case 133:
 case 132:
  return ssh_ed25519_verify(key, sig, siglen, data, dlen, compat);





 default:
  return SSH_ERR_KEY_TYPE_UNKNOWN;
 }
}
