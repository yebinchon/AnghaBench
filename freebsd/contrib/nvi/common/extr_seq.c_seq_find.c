
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ seq_t ;
struct TYPE_17__ {scalar_t__ e_c; } ;
struct TYPE_16__ {TYPE_1__* gp; } ;
struct TYPE_15__ {scalar_t__* input; scalar_t__ stype; size_t ilen; } ;
struct TYPE_14__ {int seqq; } ;
typedef TYPE_2__ SEQ ;
typedef TYPE_3__ SCR ;
typedef TYPE_4__ EVENT ;
typedef scalar_t__ CHAR_T ;


 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int MEMCMP (scalar_t__*,scalar_t__*,int ) ;
 int MIN (size_t,size_t) ;
 int SEQ_FUNCMAP ;
 TYPE_2__* SLIST_FIRST (int ) ;
 TYPE_2__* SLIST_NEXT (TYPE_2__*,int ) ;
 int e_memcmp (scalar_t__*,TYPE_4__*,int ) ;
 int q ;

SEQ *
seq_find(
 SCR *sp,
 SEQ **lastqp,
 EVENT *e_input,
 CHAR_T *c_input,
 size_t ilen,
 seq_t stype,
 int *ispartialp)
{
 SEQ *lqp = ((void*)0), *qp;
 int diff;
 if (ispartialp != ((void*)0))
  *ispartialp = 0;
 for (qp = SLIST_FIRST(sp->gp->seqq); qp != ((void*)0);
     lqp = qp, qp = SLIST_NEXT(qp, q)) {




  if (e_input == ((void*)0)) {
   if (qp->input[0] > c_input[0])
    break;
   if (qp->input[0] < c_input[0] ||
       qp->stype != stype || F_ISSET(qp, SEQ_FUNCMAP))
    continue;
   diff = MEMCMP(qp->input, c_input, MIN(qp->ilen, ilen));
  } else {
   if (qp->input[0] > e_input->e_c)
    break;
   if (qp->input[0] < e_input->e_c ||
       qp->stype != stype || F_ISSET(qp, SEQ_FUNCMAP))
    continue;
   diff =
       e_memcmp(qp->input, e_input, MIN(qp->ilen, ilen));
  }
  if (diff > 0)
   break;
  if (diff < 0)
   continue;






  if (qp->ilen <= ilen) {
   if (qp->ilen == ilen || ispartialp != ((void*)0)) {
    if (lastqp != ((void*)0))
     *lastqp = lqp;
    return (qp);
   }
   continue;
  }





  if (ispartialp != ((void*)0))
   *ispartialp = 1;
  break;
 }
 if (lastqp != ((void*)0))
  *lastqp = lqp;
 return (((void*)0));
}
