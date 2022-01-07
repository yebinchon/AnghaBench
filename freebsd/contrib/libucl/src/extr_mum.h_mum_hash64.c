
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 size_t mum_hash_finish (int ) ;
 int mum_hash_init (int ) ;
 int mum_hash_step (int ,int ) ;

__attribute__((used)) static inline size_t
mum_hash64 (uint64_t key, uint64_t seed) {
  return mum_hash_finish (mum_hash_step (mum_hash_init (seed), key));
}
