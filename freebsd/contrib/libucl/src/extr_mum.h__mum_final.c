
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int _mum (int ,int ) ;
 int _mum_finish_prime1 ;
 int _mum_finish_prime2 ;

__attribute__((used)) static inline uint64_t
_mum_final (uint64_t h) {
  h ^= _mum (h, _mum_finish_prime1);
  h ^= _mum (h, _mum_finish_prime2);
  return h;
}
