
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shift; } ;
typedef TYPE_1__ hash_t ;
typedef int hash_key_t ;
typedef int apr_size_t ;



__attribute__((used)) static apr_size_t
hash_to_index(hash_t *hash, hash_key_t adler32)
{
  return (adler32 * 0xd1f3da69) >> hash->shift;
}
