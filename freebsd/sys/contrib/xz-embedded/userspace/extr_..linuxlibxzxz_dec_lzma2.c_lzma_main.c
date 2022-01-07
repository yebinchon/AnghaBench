
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {scalar_t__ len; size_t pos_mask; size_t state; int rep0; int * is_rep; int ** is_match; } ;
struct TYPE_5__ {size_t pos; } ;
struct xz_dec_lzma2 {int rc; TYPE_1__ lzma; TYPE_2__ dict; } ;


 scalar_t__ dict_has_space (TYPE_2__*) ;
 int dict_repeat (TYPE_2__*,scalar_t__*,int ) ;
 int lzma_literal (struct xz_dec_lzma2*) ;
 int lzma_match (struct xz_dec_lzma2*,size_t) ;
 int lzma_rep_match (struct xz_dec_lzma2*,size_t) ;
 scalar_t__ rc_bit (int *,int *) ;
 int rc_limit_exceeded (int *) ;
 int rc_normalize (int *) ;

__attribute__((used)) static bool lzma_main(struct xz_dec_lzma2 *s)
{
 uint32_t pos_state;





 if (dict_has_space(&s->dict) && s->lzma.len > 0)
  dict_repeat(&s->dict, &s->lzma.len, s->lzma.rep0);





 while (dict_has_space(&s->dict) && !rc_limit_exceeded(&s->rc)) {
  pos_state = s->dict.pos & s->lzma.pos_mask;

  if (!rc_bit(&s->rc, &s->lzma.is_match[
    s->lzma.state][pos_state])) {
   lzma_literal(s);
  } else {
   if (rc_bit(&s->rc, &s->lzma.is_rep[s->lzma.state]))
    lzma_rep_match(s, pos_state);
   else
    lzma_match(s, pos_state);

   if (!dict_repeat(&s->dict, &s->lzma.len, s->lzma.rep0))
    return 0;
  }
 }





 rc_normalize(&s->rc);

 return 1;
}
