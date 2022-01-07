
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccuser {int state; TYPE_1__* cc; } ;
typedef enum user_state { ____Placeholder_user_state } user_state ;
struct TYPE_2__ {int log; } ;


 int CCLOG_USER_STATE ;
 int cc_user_log (struct ccuser*,char*,int ,int ) ;
 int * stab ;

__attribute__((used)) static __inline void
set_state(struct ccuser *user, enum user_state ns)
{
 if (user->state != ns) {
  if (user->cc->log & CCLOG_USER_STATE)
   cc_user_log(user, "%s -> %s",
       stab[user->state], stab[ns]);
  user->state = ns;
 }
}
