
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t lzma_lzma_state ;
struct TYPE_3__ {int * is_rep2; int * is_rep1; int * is_rep0; int ** is_rep0_long; } ;
typedef TYPE_1__ lzma_lzma1_encoder ;


 size_t rc_bit_0_price (int ) ;
 size_t rc_bit_1_price (int ) ;
 size_t rc_bit_price (int ,size_t const) ;

__attribute__((used)) static inline uint32_t
get_pure_rep_price(const lzma_lzma1_encoder *const coder, const uint32_t rep_index,
  const lzma_lzma_state state, uint32_t pos_state)
{
 uint32_t price;

 if (rep_index == 0) {
  price = rc_bit_0_price(coder->is_rep0[state]);
  price += rc_bit_1_price(coder->is_rep0_long[state][pos_state]);
 } else {
  price = rc_bit_1_price(coder->is_rep0[state]);

  if (rep_index == 1) {
   price += rc_bit_0_price(coder->is_rep1[state]);
  } else {
   price += rc_bit_1_price(coder->is_rep1[state]);
   price += rc_bit_price(coder->is_rep2[state],
     rep_index - 2);
  }
 }

 return price;
}
