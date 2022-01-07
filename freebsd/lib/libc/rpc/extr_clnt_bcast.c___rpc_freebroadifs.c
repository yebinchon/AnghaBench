
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct broadif {int dummy; } ;
typedef int broadlist_t ;


 struct broadif* TAILQ_FIRST (int *) ;
 struct broadif* TAILQ_NEXT (struct broadif*,int ) ;
 int free (struct broadif*) ;
 int link ;

void
__rpc_freebroadifs(broadlist_t *list)
{
 struct broadif *bip, *next;

 bip = TAILQ_FIRST(list);

 while (bip != ((void*)0)) {
  next = TAILQ_NEXT(bip, link);
  free(bip);
  bip = next;
 }
}
