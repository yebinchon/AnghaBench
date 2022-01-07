
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccuser {int state; int connq; } ;
struct ccconn {int dummy; } ;


 struct ccconn* TAILQ_FIRST (int *) ;



__attribute__((used)) static struct ccconn *
cc_set_check(struct ccuser *user)
{
 switch(user->state) {

   case 128:
   case 129:
  return (TAILQ_FIRST(&user->connq));

   default:
  return (((void*)0));
 }
}
