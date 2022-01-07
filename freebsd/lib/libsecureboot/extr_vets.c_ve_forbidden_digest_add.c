
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_data ;


 int VEC_ADD (int ,int ) ;
 int forbidden_digests ;

void
ve_forbidden_digest_add(hash_data *digest, size_t num)
{
 while (num--)
  VEC_ADD(forbidden_digests, digest[num]);
}
