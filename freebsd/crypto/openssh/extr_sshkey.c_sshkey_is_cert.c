
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int type; } ;


 int sshkey_type_is_cert (int ) ;

int
sshkey_is_cert(const struct sshkey *k)
{
 if (k == ((void*)0))
  return 0;
 return sshkey_type_is_cert(k->type);
}
