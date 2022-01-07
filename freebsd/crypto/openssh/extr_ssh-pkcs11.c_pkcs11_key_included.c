
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;


 scalar_t__ sshkey_equal (struct sshkey*,struct sshkey*) ;

__attribute__((used)) static int
pkcs11_key_included(struct sshkey ***keysp, int *nkeys, struct sshkey *key)
{
 int i;

 for (i = 0; i < *nkeys; i++)
  if (sshkey_equal(key, (*keysp)[i]))
   return (1);
 return (0);
}
