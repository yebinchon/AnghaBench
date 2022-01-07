
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
typedef scalar_t__ indx_t ;
struct TYPE_2__ {scalar_t__ nrecs; } ;
typedef int PAGE ;


 TYPE_1__* GETRINTERNAL (int *,scalar_t__) ;
 scalar_t__ NEXTINDEX (int *) ;

__attribute__((used)) static recno_t
rec_total(PAGE *h)
{
 recno_t recs;
 indx_t nxt, top;

 for (recs = 0, nxt = 0, top = NEXTINDEX(h); nxt < top; ++nxt)
  recs += GETRINTERNAL(h, nxt)->nrecs;
 return (recs);
}
