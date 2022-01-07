
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int _mum (int,int ) ;
 int _mum_hash_step_prime ;
 int _mum_key_step_prime ;

__attribute__((used)) static inline uint64_t
mum_hash_step (uint64_t h, uint64_t key)
{
  return _mum (h, _mum_hash_step_prime) ^ _mum (key, _mum_key_step_prime);
}
