
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;


 struct sshkey* sshkey_new (int) ;

struct sshkey *
sshkey_new_private(int type)
{
 struct sshkey *k = sshkey_new(type);

 if (k == ((void*)0))
  return ((void*)0);
 return k;
}
