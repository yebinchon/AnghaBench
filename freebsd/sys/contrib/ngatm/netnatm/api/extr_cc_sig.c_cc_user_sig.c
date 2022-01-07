
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct ccuser {TYPE_1__* cc; } ;
struct ccsig {int dummy; } ;
typedef enum user_sig { ____Placeholder_user_sig } user_sig ;
struct TYPE_3__ {int sigs; } ;


 int ENOMEM ;
 int SIG_USER ;
 int TAILQ_INSERT_TAIL (int *,struct ccsig*,int ) ;
 int cc_sig_log (TYPE_1__*,char*,int ,struct ccuser*) ;
 int * cc_user_sigtab ;
 int link ;
 struct ccsig* sig_alloc (TYPE_1__*,int ,struct ccuser*,int ,int,void*,int ) ;

int
cc_user_sig(struct ccuser *user, enum user_sig sig, void *arg1, u_int arg2)
{
 struct ccsig *s;

 s = sig_alloc(user->cc, SIG_USER, user, 0, sig, arg1, arg2);
 if (s == ((void*)0))
  return (ENOMEM);
 TAILQ_INSERT_TAIL(&user->cc->sigs, s, link);
 cc_sig_log(user->cc, "queuing sig %s to user %p", cc_user_sigtab[sig],
     user);
 return (0);
}
