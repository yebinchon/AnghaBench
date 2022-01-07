
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int state_func_t ;
struct TYPE_3__ {int se_flags; struct TYPE_3__* se_next; } ;
typedef TYPE_1__ session_t ;


 int SE_SHUTDOWN ;
 int multi_user ;
 TYPE_1__* sessions ;

__attribute__((used)) static state_func_t
catatonia(void)
{
 session_t *sp;

 for (sp = sessions; sp; sp = sp->se_next)
  sp->se_flags |= SE_SHUTDOWN;

 return (state_func_t) multi_user;
}
