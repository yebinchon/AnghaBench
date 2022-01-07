
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sshcipher {int auth_len; } ;



u_int
cipher_authlen(const struct sshcipher *c)
{
 return (c->auth_len);
}
