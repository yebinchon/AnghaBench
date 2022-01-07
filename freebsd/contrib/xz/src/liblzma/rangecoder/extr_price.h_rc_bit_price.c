
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int probability ;


 int RC_BIT_MODEL_TOTAL ;
 int const RC_MOVE_REDUCING_BITS ;
 int const UINT32_C (int ) ;
 int* lzma_rc_prices ;

__attribute__((used)) static inline uint32_t
rc_bit_price(const probability prob, const uint32_t bit)
{
 return lzma_rc_prices[(prob ^ ((UINT32_C(0) - bit)
   & (RC_BIT_MODEL_TOTAL - 1))) >> RC_MOVE_REDUCING_BITS];
}
