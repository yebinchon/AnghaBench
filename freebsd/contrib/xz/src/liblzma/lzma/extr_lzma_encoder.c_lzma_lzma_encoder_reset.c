
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lzma_ret ;
struct TYPE_6__ {unsigned int pb; unsigned int lp; int lc; } ;
typedef TYPE_1__ lzma_options_lzma ;
struct TYPE_7__ {unsigned int pos_mask; unsigned int literal_pos_mask; int match_price_count; int align_price_count; scalar_t__ opts_current_index; scalar_t__ opts_end_index; int fast_mode; int rep_len_encoder; int match_len_encoder; int dist_align; int * dist_slot; int * dist_special; int * is_rep2; int * is_rep1; int * is_rep0; int * is_rep; int ** is_rep0_long; int ** is_match; int literal; scalar_t__* reps; int state; int rc; int literal_context_bits; } ;
typedef TYPE_2__ lzma_lzma1_encoder ;


 int ALIGN_BITS ;
 size_t DIST_MODEL_END ;
 int DIST_SLOT_BITS ;
 size_t DIST_STATES ;
 size_t FULL_DISTANCES ;
 int LZMA_OK ;
 int LZMA_OPTIONS_ERROR ;
 size_t REPS ;
 size_t STATES ;
 int STATE_LIT_LIT ;
 int UINT32_MAX ;
 int bit_reset (int ) ;
 int bittree_reset (int ,int ) ;
 int is_options_valid (TYPE_1__ const*) ;
 int length_encoder_reset (int *,unsigned int,int ) ;
 int literal_init (int ,int ,unsigned int) ;
 int rc_reset (int *) ;

extern lzma_ret
lzma_lzma_encoder_reset(lzma_lzma1_encoder *coder,
  const lzma_options_lzma *options)
{
 if (!is_options_valid(options))
  return LZMA_OPTIONS_ERROR;

 coder->pos_mask = (1U << options->pb) - 1;
 coder->literal_context_bits = options->lc;
 coder->literal_pos_mask = (1U << options->lp) - 1;


 rc_reset(&coder->rc);


 coder->state = STATE_LIT_LIT;
 for (size_t i = 0; i < REPS; ++i)
  coder->reps[i] = 0;

 literal_init(coder->literal, options->lc, options->lp);


 for (size_t i = 0; i < STATES; ++i) {
  for (size_t j = 0; j <= coder->pos_mask; ++j) {
   bit_reset(coder->is_match[i][j]);
   bit_reset(coder->is_rep0_long[i][j]);
  }

  bit_reset(coder->is_rep[i]);
  bit_reset(coder->is_rep0[i]);
  bit_reset(coder->is_rep1[i]);
  bit_reset(coder->is_rep2[i]);
 }

 for (size_t i = 0; i < FULL_DISTANCES - DIST_MODEL_END; ++i)
  bit_reset(coder->dist_special[i]);


 for (size_t i = 0; i < DIST_STATES; ++i)
  bittree_reset(coder->dist_slot[i], DIST_SLOT_BITS);

 bittree_reset(coder->dist_align, ALIGN_BITS);


 length_encoder_reset(&coder->match_len_encoder,
   1U << options->pb, coder->fast_mode);

 length_encoder_reset(&coder->rep_len_encoder,
   1U << options->pb, coder->fast_mode);
 coder->match_price_count = UINT32_MAX / 2;
 coder->align_price_count = UINT32_MAX / 2;

 coder->opts_end_index = 0;
 coder->opts_current_index = 0;

 return LZMA_OK;
}
