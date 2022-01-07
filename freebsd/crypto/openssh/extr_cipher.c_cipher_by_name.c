
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshcipher {int * name; } ;


 struct sshcipher* ciphers ;
 scalar_t__ strcmp (int *,char const*) ;

const struct sshcipher *
cipher_by_name(const char *name)
{
 const struct sshcipher *c;
 for (c = ciphers; c->name != ((void*)0); c++)
  if (strcmp(c->name, name) == 0)
   return c;
 return ((void*)0);
}
