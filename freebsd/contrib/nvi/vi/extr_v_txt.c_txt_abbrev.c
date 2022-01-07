
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VI_PRIVATE ;
struct TYPE_6__ {int olen; int * output; } ;
struct TYPE_5__ {int cno; int offset; size_t ai; int owrite; int len; int insert; int * lb; } ;
typedef TYPE_1__ TEXT ;
typedef TYPE_2__ SEQ ;
typedef int SCR ;
typedef int CHAR_T ;


 int CH_ABBREVIATED ;
 int MEMMOVE (int *,int *,int ) ;
 int SEQ_ABBREV ;
 int * VIP (int *) ;
 scalar_t__ ex_is_abbrev (int *,size_t) ;
 scalar_t__ inword (int ) ;
 scalar_t__ isblank (int ) ;
 TYPE_2__* seq_find (int *,int *,int *,int *,size_t,int ,int *) ;
 scalar_t__ v_event_push (int *,int *,int *,int,int ) ;

__attribute__((used)) static int
txt_abbrev(SCR *sp, TEXT *tp, CHAR_T *pushcp, int isinfoline, int *didsubp, int *turnoffp)
{
 VI_PRIVATE *vip;
 CHAR_T ch, *p;
 SEQ *qp;
 size_t len, off;


 *didsubp = 0;
 if (tp->cno == tp->offset)
  return (0);

 vip = VIP(sp);
 off = tp->cno - 1;
 p = tp->lb + off;
 len = 1;
 if (off == tp->offset || isblank(p[-1]))
  goto search;
 if (inword(p[-1]))
  for (;;) {
   --off; --p; ++len;
   if (off == tp->offset || !inword(p[-1]))
    break;
  }
 else
  for (;;) {
   --off; --p; ++len;
   if (off == tp->offset ||
       inword(p[-1]) || isblank(p[-1]))
    break;
  }
search: if (isinfoline)
  if (off == tp->ai || off == tp->offset)
   if (ex_is_abbrev(p, len)) {
    *turnoffp = 1;
    return (0);
   } else
    *turnoffp = 0;
  else
   if (*turnoffp)
    return (0);


 if ((qp = seq_find(sp, ((void*)0), ((void*)0), p, len, SEQ_ABBREV, ((void*)0))) == ((void*)0))
  return (0);
 ch = *pushcp;
 if (v_event_push(sp, ((void*)0), &ch, 1, CH_ABBREVIATED))
  return (1);
 if (v_event_push(sp, ((void*)0), qp->output, qp->olen, CH_ABBREVIATED))
  return (1);
 tp->cno -= len;
 if (qp->olen >= len)
  tp->owrite += len;
 else {
  if (tp->insert)
   MEMMOVE(tp->lb + tp->cno + qp->olen,
       tp->lb + tp->cno + tp->owrite + len, tp->insert);
  tp->owrite += qp->olen;
  tp->len -= len - qp->olen;
 }
 *didsubp = len;
 return (0);
}
