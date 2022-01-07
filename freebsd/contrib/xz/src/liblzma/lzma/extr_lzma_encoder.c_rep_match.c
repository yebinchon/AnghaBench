
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t state; size_t* reps; int fast_mode; int rep_len_encoder; int rc; int * is_rep2; int * is_rep1; int * is_rep0; int ** is_rep0_long; } ;
typedef TYPE_1__ lzma_lzma1_encoder ;


 int length (int *,int *,size_t const,size_t const,int ) ;
 int rc_bit (int *,int *,size_t const) ;
 int update_long_rep (size_t) ;
 int update_short_rep (size_t) ;

__attribute__((used)) static inline void
rep_match(lzma_lzma1_encoder *coder, const uint32_t pos_state,
  const uint32_t rep, const uint32_t len)
{
 if (rep == 0) {
  rc_bit(&coder->rc, &coder->is_rep0[coder->state], 0);
  rc_bit(&coder->rc,
    &coder->is_rep0_long[coder->state][pos_state],
    len != 1);
 } else {
  const uint32_t distance = coder->reps[rep];
  rc_bit(&coder->rc, &coder->is_rep0[coder->state], 1);

  if (rep == 1) {
   rc_bit(&coder->rc, &coder->is_rep1[coder->state], 0);
  } else {
   rc_bit(&coder->rc, &coder->is_rep1[coder->state], 1);
   rc_bit(&coder->rc, &coder->is_rep2[coder->state],
     rep - 2);

   if (rep == 3)
    coder->reps[3] = coder->reps[2];

   coder->reps[2] = coder->reps[1];
  }

  coder->reps[1] = coder->reps[0];
  coder->reps[0] = distance;
 }

 if (len == 1) {
  update_short_rep(coder->state);
 } else {
  length(&coder->rc, &coder->rep_len_encoder, pos_state, len,
    coder->fast_mode);
  update_long_rep(coder->state);
 }
}
