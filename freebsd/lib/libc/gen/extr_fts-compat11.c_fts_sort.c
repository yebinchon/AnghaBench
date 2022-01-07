
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {size_t fts_nitems; TYPE_1__** fts_array; } ;
struct TYPE_9__ {struct TYPE_9__* fts_link; } ;
typedef TYPE_1__ FTSENT11 ;
typedef TYPE_2__ FTS11 ;


 int fts_compar ;
 int qsort (TYPE_1__**,size_t,int,int ) ;
 TYPE_1__** reallocf (TYPE_1__**,int) ;

__attribute__((used)) static FTSENT11 *
fts_sort(FTS11 *sp, FTSENT11 *head, size_t nitems)
{
 FTSENT11 **ap, *p;
 if (nitems > sp->fts_nitems) {
  sp->fts_nitems = nitems + 40;
  if ((sp->fts_array = reallocf(sp->fts_array,
      sp->fts_nitems * sizeof(FTSENT11 *))) == ((void*)0)) {
   sp->fts_nitems = 0;
   return (head);
  }
 }
 for (ap = sp->fts_array, p = head; p; p = p->fts_link)
  *ap++ = p;
 qsort(sp->fts_array, nitems, sizeof(FTSENT11 *), fts_compar);
 for (head = *(ap = sp->fts_array); --nitems; ++ap)
  ap[0]->fts_link = ap[1];
 ap[0]->fts_link = ((void*)0);
 return (head);
}
