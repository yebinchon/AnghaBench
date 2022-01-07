
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int lzma_range_encoder ;
struct TYPE_4__ {scalar_t__* counters; int high; int choice2; int * mid; int choice; int * low; } ;
typedef TYPE_1__ lzma_length_encoder ;


 int LEN_HIGH_BITS ;
 int LEN_LOW_BITS ;
 scalar_t__ LEN_LOW_SYMBOLS ;
 int LEN_MID_BITS ;
 scalar_t__ LEN_MID_SYMBOLS ;
 scalar_t__ MATCH_LEN_MAX ;
 scalar_t__ MATCH_LEN_MIN ;
 int assert (int) ;
 int length_update_prices (TYPE_1__*,scalar_t__ const) ;
 int rc_bit (int *,int *,int) ;
 int rc_bittree (int *,int ,int ,scalar_t__) ;

__attribute__((used)) static inline void
length(lzma_range_encoder *rc, lzma_length_encoder *lc,
  const uint32_t pos_state, uint32_t len, const bool fast_mode)
{
 assert(len <= MATCH_LEN_MAX);
 len -= MATCH_LEN_MIN;

 if (len < LEN_LOW_SYMBOLS) {
  rc_bit(rc, &lc->choice, 0);
  rc_bittree(rc, lc->low[pos_state], LEN_LOW_BITS, len);
 } else {
  rc_bit(rc, &lc->choice, 1);
  len -= LEN_LOW_SYMBOLS;

  if (len < LEN_MID_SYMBOLS) {
   rc_bit(rc, &lc->choice2, 0);
   rc_bittree(rc, lc->mid[pos_state], LEN_MID_BITS, len);
  } else {
   rc_bit(rc, &lc->choice2, 1);
   len -= LEN_MID_SYMBOLS;
   rc_bittree(rc, lc->high, LEN_HIGH_BITS, len);
  }
 }



 if (!fast_mode)
  if (--lc->counters[pos_state] == 0)
   length_update_prices(lc, pos_state);
}
