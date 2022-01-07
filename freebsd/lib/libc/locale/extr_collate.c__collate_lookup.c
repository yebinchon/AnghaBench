
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t wchar_t ;
struct xlocale_collate {TYPE_3__* info; TYPE_1__* char_pri_table; } ;
struct TYPE_9__ {int* pri; } ;
struct TYPE_11__ {TYPE_2__ pri; } ;
typedef TYPE_4__ collate_large_t ;
struct TYPE_12__ {int* pri; } ;
typedef TYPE_5__ collate_chain_t ;
struct TYPE_10__ {int directive_count; scalar_t__ large_count; int* directive; int* undef_pri; } ;
struct TYPE_8__ {int* pri; } ;


 size_t const COLLATE_MAX_PRIORITY ;
 int DIRECTIVE_UNDEFINED ;
 size_t const UCHAR_MAX ;
 TYPE_5__* chainsearch (struct xlocale_collate*,size_t const*,int*) ;
 TYPE_4__* largesearch (struct xlocale_collate*,size_t const) ;
 int* substsearch (struct xlocale_collate*,int,int) ;

void
_collate_lookup(struct xlocale_collate *table, const wchar_t *t, int *len,
    int *pri, int which, const int **state)
{
 collate_chain_t *p2;
 collate_large_t *match;
 int p, l;
 const int *sptr;





 if (which >= table->info->directive_count) {
  *pri = *t;
  *len = 1;
  *state = ((void*)0);
  return;
 }





 if ((sptr = *state) != ((void*)0)) {
  *pri = *sptr;
  sptr++;
  if ((sptr == *state) || (sptr == ((void*)0)))
   *state = ((void*)0);
  else
   *state = sptr;
  *len = 0;
  return;
 }


 *len = 1;





 if (((p2 = chainsearch(table, t, &l)) != ((void*)0)) &&
     ((p = p2->pri[which]) >= 0)) {

  *len = l;
  *pri = p;

 } else if (*t <= UCHAR_MAX) {





  *pri = table->char_pri_table[*t].pri[which];

 } else if ((table->info->large_count > 0) &&
     ((match = largesearch(table, *t)) != ((void*)0))) {




  *pri = match->pri.pri[which];

 } else {



  if (table->info->directive[which] & DIRECTIVE_UNDEFINED) {

   *pri = (*t & COLLATE_MAX_PRIORITY);
  } else {
   *pri = table->info->undef_pri[which];
  }

  return;
 }
 if ((sptr = substsearch(table, *pri, which)) != ((void*)0)) {
  if ((*pri = *sptr) > 0) {
   sptr++;
   *state = *sptr ? sptr : ((void*)0);
  }
 }

}
