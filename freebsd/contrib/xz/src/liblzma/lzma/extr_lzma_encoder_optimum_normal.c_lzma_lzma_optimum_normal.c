
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
typedef int reps ;
struct TYPE_16__ {scalar_t__ read_ahead; int nice_len; } ;
typedef TYPE_2__ lzma_mf ;
struct TYPE_17__ {size_t opts_end_index; size_t opts_current_index; int match_price_count; scalar_t__ align_price_count; int longest_match_length; int matches; int matches_count; int reps; TYPE_1__* opts; } ;
typedef TYPE_3__ lzma_lzma1_encoder ;
struct TYPE_15__ {int pos_prev; int back_prev; } ;


 scalar_t__ ALIGN_SIZE ;
 int OPTS ;
 int REPS ;
 int UINT32_MAX ;
 int assert (int) ;
 int backward (TYPE_3__*,int*,int*,int) ;
 int fill_align_prices (TYPE_3__*) ;
 int fill_dist_prices (TYPE_3__*) ;
 int helper1 (TYPE_3__*,TYPE_2__*,int*,int*,int) ;
 int helper2 (TYPE_3__*,int*,scalar_t__,int,int,int,int ,int ) ;
 int memcpy (int*,int ,int) ;
 scalar_t__ mf_avail (TYPE_2__*) ;
 int mf_find (TYPE_2__*,int *,int ) ;
 scalar_t__ mf_ptr (TYPE_2__*) ;
 int my_min (scalar_t__,int) ;

extern void
lzma_lzma_optimum_normal(lzma_lzma1_encoder *restrict coder,
  lzma_mf *restrict mf,
  uint32_t *restrict back_res, uint32_t *restrict len_res,
  uint32_t position)
{

 if (coder->opts_end_index != coder->opts_current_index) {
  assert(mf->read_ahead > 0);
  *len_res = coder->opts[coder->opts_current_index].pos_prev
    - coder->opts_current_index;
  *back_res = coder->opts[coder->opts_current_index].back_prev;
  coder->opts_current_index = coder->opts[
    coder->opts_current_index].pos_prev;
  return;
 }




 if (mf->read_ahead == 0) {
  if (coder->match_price_count >= (1 << 7))
   fill_dist_prices(coder);

  if (coder->align_price_count >= ALIGN_SIZE)
   fill_align_prices(coder);
 }





 uint32_t len_end = helper1(coder, mf, back_res, len_res, position);
 if (len_end == UINT32_MAX)
  return;

 uint32_t reps[REPS];
 memcpy(reps, coder->reps, sizeof(reps));

 uint32_t cur;
 for (cur = 1; cur < len_end; ++cur) {
  assert(cur < OPTS);

  coder->longest_match_length = mf_find(
    mf, &coder->matches_count, coder->matches);

  if (coder->longest_match_length >= mf->nice_len)
   break;

  len_end = helper2(coder, reps, mf_ptr(mf) - 1, len_end,
    position + cur, cur, mf->nice_len,
    my_min(mf_avail(mf) + 1, OPTS - 1 - cur));
 }

 backward(coder, len_res, back_res, cur);
 return;
}
