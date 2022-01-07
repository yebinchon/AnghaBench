
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {int tv_sec; } ;
struct itimerval {TYPE_1__ it_value; } ;
struct dtfs_poll {int dp_pcc; } ;
struct dtfs_mount {int dtm_pollent; } ;


 int ITIMER_REAL ;
 int LIST_INSERT_HEAD (int *,struct dtfs_poll*,int ) ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int dp_entries ;
 int errno ;
 int memset (struct itimerval*,int ,int) ;
 int puffs_cc_getcc (struct puffs_usermount*) ;
 int puffs_cc_yield (int ) ;
 struct dtfs_mount* puffs_getspecific (struct puffs_usermount*) ;
 int setitimer (int ,struct itimerval*,int *) ;

int
dtfs_node_poll(struct puffs_usermount *pu, void *opc, int *events)
{
 struct dtfs_mount *dtm = puffs_getspecific(pu);
 struct dtfs_poll dp;
 struct itimerval it;

 memset(&it, 0, sizeof(struct itimerval));
 it.it_value.tv_sec = 4;
 if (setitimer(ITIMER_REAL, &it, ((void*)0)) == -1)
  return errno;

 dp.dp_pcc = puffs_cc_getcc(pu);
 LIST_INSERT_HEAD(&dtm->dtm_pollent, &dp, dp_entries);
 puffs_cc_yield(dp.dp_pcc);

 *events = *events & (POLLIN | POLLOUT | POLLRDNORM | POLLWRNORM);
 return 0;
}
