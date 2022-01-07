
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ttyent {int dummy; } ;
typedef int state_func_t ;
struct TYPE_6__ {struct TYPE_6__* se_next; } ;
typedef TYPE_1__ session_t ;


 int endttyent () ;
 int free_session (TYPE_1__*) ;
 struct ttyent* getttyent () ;
 int multi_user ;
 TYPE_1__* new_session (TYPE_1__*,struct ttyent*) ;
 TYPE_1__* sessions ;
 int single_user ;
 scalar_t__ start_session_db () ;

__attribute__((used)) static state_func_t
read_ttys(void)
{
 session_t *sp, *snext;
 struct ttyent *typ;





 for (sp = sessions; sp; sp = snext) {
  snext = sp->se_next;
  free_session(sp);
 }
 sessions = 0;
 if (start_session_db())
  return (state_func_t) single_user;





 while ((typ = getttyent()) != ((void*)0))
  if ((snext = new_session(sp, typ)) != ((void*)0))
   sp = snext;

 endttyent();

 return (state_func_t) multi_user;
}
