
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_usermount {int dummy; } ;
struct dtfs_poll {int dp_pcc; } ;
struct dtfs_mount {int dtm_pollent; scalar_t__ dtm_needwakeup; } ;


 struct dtfs_poll* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct dtfs_poll*,int ) ;
 int dp_entries ;
 int puffs_cc_continue (int ) ;
 struct dtfs_mount* puffs_getspecific (struct puffs_usermount*) ;

__attribute__((used)) static void
loopfun(struct puffs_usermount *pu)
{
 struct dtfs_mount *dtm = puffs_getspecific(pu);
 struct dtfs_poll *dp;

 while (dtm->dtm_needwakeup) {
  dtm->dtm_needwakeup--;
  dp = LIST_FIRST(&dtm->dtm_pollent);
  if (dp == ((void*)0))
   return;

  LIST_REMOVE(dp, dp_entries);
  puffs_cc_continue(dp->dp_pcc);
 }
}
