
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccuser {char* name; struct ccdata* cc; int connq; void* uarg; int state; } ;
struct ccdata {int log; int user_list; } ;


 int CCLOG_USER_INST ;
 struct ccuser* CCZALLOC (int) ;
 int LIST_INSERT_HEAD (int *,struct ccuser*,int ) ;
 int TAILQ_INIT (int *) ;
 int USER_NULL ;
 int cc_user_log (struct ccuser*,char*,char const*) ;
 int node_link ;
 int strncpy (char*,char const*,int) ;

struct ccuser *
cc_user_create(struct ccdata *cc, void *uarg, const char *name)
{
 struct ccuser *user;

 user = CCZALLOC(sizeof(*user));
 if (user == ((void*)0))
  return (((void*)0));

 user->cc = cc;
 user->state = USER_NULL;
 user->uarg = uarg;
 strncpy(user->name, name, sizeof(user->name));
 user->name[sizeof(user->name) - 1] = '\0';
 TAILQ_INIT(&user->connq);
 LIST_INSERT_HEAD(&cc->user_list, user, node_link);

 if (user->cc->log & CCLOG_USER_INST)
  cc_user_log(user, "created with name '%s'", name);

 return (user);
}
