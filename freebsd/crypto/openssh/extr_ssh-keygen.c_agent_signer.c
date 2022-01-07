
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sshkey {int dummy; } ;


 int ssh_agent_sign (int,struct sshkey const*,int **,size_t*,int const*,size_t,char const*,int ) ;

__attribute__((used)) static int
agent_signer(const struct sshkey *key, u_char **sigp, size_t *lenp,
    const u_char *data, size_t datalen,
    const char *alg, u_int compat, void *ctx)
{
 int *agent_fdp = (int *)ctx;

 return ssh_agent_sign(*agent_fdp, key, sigp, lenp,
     data, datalen, alg, compat);
}
