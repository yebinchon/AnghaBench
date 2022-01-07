
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t table_size; size_t* counters; size_t** prices; int high; int * mid; int * low; int choice2; int choice; } ;
typedef TYPE_1__ lzma_length_encoder ;


 int LEN_HIGH_BITS ;
 int LEN_LOW_BITS ;
 size_t LEN_LOW_SYMBOLS ;
 int LEN_MID_BITS ;
 size_t LEN_MID_SYMBOLS ;
 size_t const rc_bit_0_price (int ) ;
 size_t const rc_bit_1_price (int ) ;
 size_t const rc_bittree_price (int ,int ,size_t) ;

__attribute__((used)) static void
length_update_prices(lzma_length_encoder *lc, const uint32_t pos_state)
{
 const uint32_t table_size = lc->table_size;
 lc->counters[pos_state] = table_size;

 const uint32_t a0 = rc_bit_0_price(lc->choice);
 const uint32_t a1 = rc_bit_1_price(lc->choice);
 const uint32_t b0 = a1 + rc_bit_0_price(lc->choice2);
 const uint32_t b1 = a1 + rc_bit_1_price(lc->choice2);
 uint32_t *const prices = lc->prices[pos_state];

 uint32_t i;
 for (i = 0; i < table_size && i < LEN_LOW_SYMBOLS; ++i)
  prices[i] = a0 + rc_bittree_price(lc->low[pos_state],
    LEN_LOW_BITS, i);

 for (; i < table_size && i < LEN_LOW_SYMBOLS + LEN_MID_SYMBOLS; ++i)
  prices[i] = b0 + rc_bittree_price(lc->mid[pos_state],
    LEN_MID_BITS, i - LEN_LOW_SYMBOLS);

 for (; i < table_size; ++i)
  prices[i] = b1 + rc_bittree_price(lc->high, LEN_HIGH_BITS,
    i - LEN_LOW_SYMBOLS - LEN_MID_SYMBOLS);

 return;
}
