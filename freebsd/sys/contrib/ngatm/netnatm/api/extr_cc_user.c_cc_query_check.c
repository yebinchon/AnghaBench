
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccuser {int state; struct ccconn* accepted; int connq; } ;
struct ccconn {int state; } ;


 int CONN_IN_WAIT_ACCEPT_OK ;
 struct ccconn* TAILQ_FIRST (int *) ;





__attribute__((used)) static struct ccconn *
cc_query_check(struct ccuser *user)
{

 switch (user->state) {

   case 128:
   case 130:
   case 131:
  return (TAILQ_FIRST(&user->connq));

   case 129:





  if (user->accepted != ((void*)0) &&
      user->accepted->state == CONN_IN_WAIT_ACCEPT_OK)
   return (user->accepted);


   default:
  return (((void*)0));
 }
}
