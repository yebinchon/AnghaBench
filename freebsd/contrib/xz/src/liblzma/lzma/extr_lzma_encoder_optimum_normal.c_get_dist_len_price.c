
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t** dist_prices; size_t** dist_slot_prices; size_t* align_prices; int match_len_encoder; } ;
typedef TYPE_1__ lzma_lzma1_encoder ;


 size_t const ALIGN_MASK ;
 size_t const FULL_DISTANCES ;
 size_t get_dist_slot_2 (size_t const) ;
 size_t get_dist_state (size_t const) ;
 size_t get_len_price (int *,size_t const,size_t const) ;

__attribute__((used)) static inline uint32_t
get_dist_len_price(const lzma_lzma1_encoder *const coder, const uint32_t dist,
  const uint32_t len, const uint32_t pos_state)
{
 const uint32_t dist_state = get_dist_state(len);
 uint32_t price;

 if (dist < FULL_DISTANCES) {
  price = coder->dist_prices[dist_state][dist];
 } else {
  const uint32_t dist_slot = get_dist_slot_2(dist);
  price = coder->dist_slot_prices[dist_state][dist_slot]
    + coder->align_prices[dist & ALIGN_MASK];
 }

 price += get_len_price(&coder->match_len_encoder, len, pos_state);

 return price;
}
