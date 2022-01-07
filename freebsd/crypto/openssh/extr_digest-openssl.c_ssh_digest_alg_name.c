
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_digest {char const* name; } ;


 struct ssh_digest* ssh_digest_by_alg (int) ;

const char *
ssh_digest_alg_name(int alg)
{
 const struct ssh_digest *digest = ssh_digest_by_alg(alg);

 return digest == ((void*)0) ? ((void*)0) : digest->name;
}
