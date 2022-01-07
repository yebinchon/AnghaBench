
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccuser {scalar_t__ aborted; scalar_t__ queue_max; scalar_t__ queue_act; int config; TYPE_1__* accepted; int * sap; int connq; } ;
struct TYPE_2__ {int * acceptor; } ;


 int CCASSERT (int ,char*) ;
 int CCFREE (int *) ;
 int TAILQ_EMPTY (int *) ;
 int USER_NULL ;
 int USER_P2P ;
 int cc_user_sig_flush (struct ccuser*) ;
 int set_state (struct ccuser*,int ) ;

__attribute__((used)) static void
cc_user_reset(struct ccuser *user)
{

 CCASSERT(TAILQ_EMPTY(&user->connq), ("connq not empty"));

 if (user->sap != ((void*)0)) {
  CCFREE(user->sap);
  user->sap = ((void*)0);
 }

 if (user->accepted != ((void*)0)) {
  user->accepted->acceptor = ((void*)0);
  user->accepted = ((void*)0);
 }
 user->config = USER_P2P;
 user->queue_act = 0;
 user->queue_max = 0;
 user->aborted = 0;

 set_state(user, USER_NULL);

 cc_user_sig_flush(user);
}
