
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int se_device; int se_process; int se_flags; struct TYPE_3__* se_next; } ;
typedef TYPE_1__ session_t ;


 int SE_SHUTDOWN ;
 int SIGHUP ;
 int kill (int ,int ) ;
 int revoke (int ) ;
 TYPE_1__* sessions ;

__attribute__((used)) static void
revoke_ttys(void)
{
 session_t *sp;

 for (sp = sessions; sp; sp = sp->se_next) {
  sp->se_flags |= SE_SHUTDOWN;
  kill(sp->se_process, SIGHUP);
  revoke(sp->se_device);
 }
}
