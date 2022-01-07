
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccuser {struct ccuser* sap; int name; TYPE_1__* cc; } ;
struct TYPE_2__ {int log; } ;


 int CCFREE (struct ccuser*) ;
 int CCLOG_USER_INST ;
 int LIST_REMOVE (struct ccuser*,int ) ;
 int cc_user_abort (struct ccuser*,int *) ;
 int cc_user_log (struct ccuser*,char*,int ) ;
 int cc_user_sig_flush (struct ccuser*) ;
 int node_link ;

void
cc_user_destroy(struct ccuser *user)
{

 if (user->cc->log & CCLOG_USER_INST)
  cc_user_log(user, "destroy '%s'", user->name);

 cc_user_abort(user, ((void*)0));

 if (user->sap != ((void*)0))
  CCFREE(user->sap);

 cc_user_sig_flush(user);

 LIST_REMOVE(user, node_link);
 CCFREE(user);
}
