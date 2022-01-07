
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_digest {int id; int * mdfunc; } ;


 int SSH_DIGEST_MAX ;
 struct ssh_digest const* digests ;

__attribute__((used)) static const struct ssh_digest *
ssh_digest_by_alg(int alg)
{
 if (alg < 0 || alg >= SSH_DIGEST_MAX)
  return ((void*)0);
 if (digests[alg].id != alg)
  return ((void*)0);
 if (digests[alg].mdfunc == ((void*)0))
  return ((void*)0);
 return &(digests[alg]);
}
