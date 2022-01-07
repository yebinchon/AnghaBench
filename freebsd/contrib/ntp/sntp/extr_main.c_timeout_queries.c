
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u_int ;
struct timeval {long tv_sec; } ;
struct TYPE_8__ {scalar_t__ stime; TYPE_1__* dctx; int addr; scalar_t__ done; struct TYPE_8__* link; } ;
typedef TYPE_2__ sent_pkt ;
struct TYPE_9__ {long tv_sec; } ;
struct TYPE_7__ {int flags; int name; } ;


 size_t COUNTOF (TYPE_2__**) ;


 int CTX_xCST ;
 int INSIST (int) ;
 int TRACE (int,char*) ;
 int TRUE ;
 int base ;
 int event_base_loopexit (int ,int *) ;
 TYPE_2__** fam_listheads ;
 int gettimeofday_cached (int ,struct timeval*) ;
 long response_timeout ;
 int shutting_down ;
 TYPE_4__ start_tv ;
 int stoa (int *) ;
 int timeout_query (TYPE_2__*) ;

void
timeout_queries(void)
{
 struct timeval start_cb;
 u_int idx;
 sent_pkt * head;
 sent_pkt * spkt;
 sent_pkt * spkt_next;
 long age;
 int didsomething = 0;

 TRACE(3, ("timeout_queries: called to check %u items\n",
    (unsigned)COUNTOF(fam_listheads)));

 gettimeofday_cached(base, &start_cb);
 for (idx = 0; idx < COUNTOF(fam_listheads); idx++) {
  head = fam_listheads[idx];
  for (spkt = head; spkt != ((void*)0); spkt = spkt_next) {
   char xcst;

   didsomething = 1;
   switch (spkt->dctx->flags & CTX_xCST) {
       case 129:
    xcst = 'B';
    break;

       case 128:
    xcst = 'U';
    break;

       default:
    INSIST(!"spkt->dctx->flags neither UCST nor BCST");
    break;
   }

   spkt_next = spkt->link;
   if (0 == spkt->stime || spkt->done)
    continue;
   age = start_cb.tv_sec - spkt->stime;
   TRACE(3, ("%s %s %cCST age %ld\n",
      stoa(&spkt->addr),
      spkt->dctx->name, xcst, age));
   if (age > response_timeout)
    timeout_query(spkt);
  }
 }

 TRACE(3, ("timeout_queries: didsomething is %d, age is %ld\n",
    didsomething, (long) (start_cb.tv_sec - start_tv.tv_sec)));
 if (start_cb.tv_sec - start_tv.tv_sec > response_timeout) {
  TRACE(3, ("timeout_queries: bail!\n"));
  event_base_loopexit(base, ((void*)0));
  shutting_down = TRUE;
 }
}
