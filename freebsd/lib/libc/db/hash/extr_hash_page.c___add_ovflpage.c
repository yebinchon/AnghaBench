
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_11__ {int addr; struct TYPE_11__* ovfl; int flags; scalar_t__ page; } ;
struct TYPE_10__ {int FFACTOR; } ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__ BUFHEAD ;


 int BUF_MOD ;
 int DEF_FFACTOR ;
 int FREESPACE (int*) ;
 int MIN_FFACTOR ;
 int OFFSET (int*) ;
 int OVFLPAGE ;
 int OVFLSIZE ;
 TYPE_2__* __get_buf (TYPE_1__*,int,TYPE_2__*,int) ;
 int fprintf (int ,char*,int,int,int) ;
 int hash_overflows ;
 int overflow_page (TYPE_1__*) ;
 int stderr ;

BUFHEAD *
__add_ovflpage(HTAB *hashp, BUFHEAD *bufp)
{
 u_int16_t *sp, ndx, ovfl_num;



 sp = (u_int16_t *)bufp->page;


 if (hashp->FFACTOR == DEF_FFACTOR) {
  hashp->FFACTOR = sp[0] >> 1;
  if (hashp->FFACTOR < MIN_FFACTOR)
   hashp->FFACTOR = MIN_FFACTOR;
 }
 bufp->flags |= BUF_MOD;
 ovfl_num = overflow_page(hashp);




 if (!ovfl_num || !(bufp->ovfl = __get_buf(hashp, ovfl_num, bufp, 1)))
  return (((void*)0));
 bufp->ovfl->flags |= BUF_MOD;




 ndx = sp[0];





 sp[ndx + 4] = OFFSET(sp);
 sp[ndx + 3] = FREESPACE(sp) - OVFLSIZE;
 sp[ndx + 1] = ovfl_num;
 sp[ndx + 2] = OVFLPAGE;
 sp[0] = ndx + 2;



 return (bufp->ovfl);
}
