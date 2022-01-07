
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_digest {size_t digest_len; } ;


 struct ssh_digest* ssh_digest_by_alg (int) ;

size_t
ssh_digest_bytes(int alg)
{
 const struct ssh_digest *digest = ssh_digest_by_alg(alg);

 return digest == ((void*)0) ? 0 : digest->digest_len;
}
