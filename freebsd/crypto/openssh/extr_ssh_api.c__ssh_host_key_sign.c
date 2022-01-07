
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sshkey {int dummy; } ;


 int sshkey_sign (struct sshkey*,int **,size_t*,int const*,size_t,char const*,int ) ;

int
_ssh_host_key_sign(struct sshkey *privkey, struct sshkey *pubkey,
    u_char **signature, size_t *slen, const u_char *data, size_t dlen,
    const char *alg, u_int compat)
{
 return sshkey_sign(privkey, signature, slen, data, dlen, alg, compat);
}
