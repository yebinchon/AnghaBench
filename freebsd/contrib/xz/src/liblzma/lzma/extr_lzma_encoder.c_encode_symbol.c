
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_9__ {scalar_t__ read_ahead; } ;
typedef TYPE_1__ lzma_mf ;
struct TYPE_10__ {scalar_t__ pos_mask; size_t state; int * is_rep; int rc; int ** is_match; } ;
typedef TYPE_2__ lzma_lzma1_encoder ;


 scalar_t__ REPS ;
 scalar_t__ UINT32_MAX ;
 int assert (int) ;
 int literal (TYPE_2__*,TYPE_1__*,scalar_t__) ;
 int match (TYPE_2__*,scalar_t__ const,scalar_t__,scalar_t__) ;
 int rc_bit (int *,int *,int) ;
 int rep_match (TYPE_2__*,scalar_t__ const,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
encode_symbol(lzma_lzma1_encoder *coder, lzma_mf *mf,
  uint32_t back, uint32_t len, uint32_t position)
{
 const uint32_t pos_state = position & coder->pos_mask;

 if (back == UINT32_MAX) {

  assert(len == 1);
  rc_bit(&coder->rc,
    &coder->is_match[coder->state][pos_state], 0);
  literal(coder, mf, position);
 } else {

  rc_bit(&coder->rc,
   &coder->is_match[coder->state][pos_state], 1);

  if (back < REPS) {


   rc_bit(&coder->rc, &coder->is_rep[coder->state], 1);
   rep_match(coder, pos_state, back, len);
  } else {

   rc_bit(&coder->rc, &coder->is_rep[coder->state], 0);
   match(coder, pos_state, back - REPS, len);
  }
 }

 assert(mf->read_ahead >= len);
 mf->read_ahead -= len;
}
