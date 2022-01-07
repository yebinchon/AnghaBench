
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sshkey {int dummy; } ;


 int SSH_ERR_INVALID_ARGUMENT ;
 int sshkey_sign (struct sshkey const*,int **,size_t*,int const*,size_t,char const*,int ) ;

__attribute__((used)) static int
default_key_sign(const struct sshkey *key, u_char **sigp, size_t *lenp,
    const u_char *data, size_t datalen,
    const char *alg, u_int compat, void *ctx)
{
 if (ctx != ((void*)0))
  return SSH_ERR_INVALID_ARGUMENT;
 return sshkey_sign(key, sigp, lenp, data, datalen, alg, compat);
}
