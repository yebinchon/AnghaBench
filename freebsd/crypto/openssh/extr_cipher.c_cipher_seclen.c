
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sshcipher {int name; } ;


 int cipher_keylen (struct sshcipher const*) ;
 scalar_t__ strcmp (char*,int ) ;

u_int
cipher_seclen(const struct sshcipher *c)
{
 if (strcmp("3des-cbc", c->name) == 0)
  return 14;
 return cipher_keylen(c);
}
