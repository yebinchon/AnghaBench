
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sshcipher {int key_len; } ;



u_int
cipher_keylen(const struct sshcipher *c)
{
 return (c->key_len);
}
