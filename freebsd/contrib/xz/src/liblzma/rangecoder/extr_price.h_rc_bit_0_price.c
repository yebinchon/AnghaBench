
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t probability ;


 size_t const RC_MOVE_REDUCING_BITS ;
 int * lzma_rc_prices ;

__attribute__((used)) static inline uint32_t
rc_bit_0_price(const probability prob)
{
 return lzma_rc_prices[prob >> RC_MOVE_REDUCING_BITS];
}
