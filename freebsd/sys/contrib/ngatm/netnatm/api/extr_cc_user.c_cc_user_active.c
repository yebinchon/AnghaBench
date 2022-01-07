
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccuser {int config; int connq; } ;
struct TYPE_2__ {scalar_t__ cfg; } ;
struct ccconn {int connid; TYPE_1__ bearer; } ;
struct atm_p2p_call_active {int connid; } ;
struct atm_p2mp_call_active {int connid; } ;


 int ATMOP_P2MP_CALL_ACTIVE ;
 int ATMOP_P2P_CALL_ACTIVE ;
 int CCFREE (struct atm_p2p_call_active*) ;
 struct atm_p2p_call_active* CCZALLOC (int) ;
 struct ccconn* TAILQ_FIRST (int *) ;
 scalar_t__ UNI_BEARER_P2P ;
 int USER_ACTIVE ;
 int USER_P2P ;
 int USER_ROOT ;
 int cc_user_send (struct ccuser*,int ,struct atm_p2p_call_active*,int) ;
 int set_state (struct ccuser*,int ) ;

__attribute__((used)) static void
cc_user_active(struct ccuser *user)
{
 struct ccconn *conn = TAILQ_FIRST(&user->connq);

 set_state(user, USER_ACTIVE);
 if (conn->bearer.cfg == UNI_BEARER_P2P) {
  struct atm_p2p_call_active *act;

  user->config = USER_P2P;
  act = CCZALLOC(sizeof(*act));
  if (act == ((void*)0))
   return;
  act->connid = conn->connid;
  cc_user_send(user, ATMOP_P2P_CALL_ACTIVE, act, sizeof(*act));
  CCFREE(act);
 } else {
  struct atm_p2mp_call_active *act;

  user->config = USER_ROOT;
  act = CCZALLOC(sizeof(*act));
  if (act == ((void*)0))
   return;
  act->connid = conn->connid;
  cc_user_send(user, ATMOP_P2MP_CALL_ACTIVE, act, sizeof(*act));
  CCFREE(act);
 }
}
