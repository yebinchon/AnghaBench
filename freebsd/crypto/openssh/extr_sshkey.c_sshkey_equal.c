
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {scalar_t__ type; int cert; } ;


 int cert_compare (int ,int ) ;
 int sshkey_equal_public (struct sshkey const*,struct sshkey const*) ;
 scalar_t__ sshkey_is_cert (struct sshkey const*) ;

int
sshkey_equal(const struct sshkey *a, const struct sshkey *b)
{
 if (a == ((void*)0) || b == ((void*)0) || a->type != b->type)
  return 0;
 if (sshkey_is_cert(a)) {
  if (!cert_compare(a->cert, b->cert))
   return 0;
 }
 return sshkey_equal_public(a, b);
}
