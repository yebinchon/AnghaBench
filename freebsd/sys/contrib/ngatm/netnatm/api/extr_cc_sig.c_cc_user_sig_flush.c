
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccuser {int cc; } ;


 int SIG_USER ;
 int cc_sig_log (int ,char*,struct ccuser*) ;
 int sig_flush (int ,int ,struct ccuser*) ;

void
cc_user_sig_flush(struct ccuser *user)
{

 cc_sig_log(user->cc, "flushing signals to user %p", user);
 sig_flush(user->cc, SIG_USER, user);
}
