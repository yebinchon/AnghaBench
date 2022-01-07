
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sshkey {int dummy; } ;



int
mm_sshkey_sign(struct sshkey *key, u_char **sigp, u_int *lenp,
    u_char *data, u_int datalen, char *alg, u_int compat)
{
 return (-1);
}
